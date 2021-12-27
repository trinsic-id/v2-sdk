import glob
import os
import shutil
from os.path import abspath, join, dirname
from typing import List, Dict

import pkg_resources
from grpc_tools import protoc

from build_sdks import update_line


def get_language_dir(language_name: str) -> str:
    return abspath(join(dirname(abspath(__file__)), '..', language_name))


def get_proto_files(dir_name: str = None) -> List[str]:
    dir_name = dir_name or get_language_dir('proto')
    proto_search_glob = join(dir_name, '**', '*.proto')
    return [abspath(file_path) for file_path in glob.glob(proto_search_glob, recursive=True)]


def clean_proto_dir(language_proto_dir: str) -> None:
    try:
        shutil.rmtree(language_proto_dir)
    except:
        pass
    os.mkdir(language_proto_dir)


def join_args(args: Dict[str, str]) -> str:
    return " ".join([f'--{key}="{value}"' for (key, value) in args.items()]) if args else ''


def run_protoc(language_options: Dict[str, str] = None,
               custom_options: Dict[str, str] = None,
               proto_files: List[str] = None,
               plugin: str = None,
               protoc_executable: str = 'protoc') -> None:
    language_arg_string = join_args(language_options)
    proto_path_string = f'--proto_path="{get_language_dir("proto")}"'
    custom_options_string = join_args(custom_options)
    proto_files_string = " ".join(proto_files)
    plugin_string = f'--plugin={plugin}' if plugin else ''
    protoc_command = f'{protoc_executable} {plugin_string} {proto_path_string} {language_arg_string} {custom_options_string} {proto_files_string}'
    print(protoc_command)
    if os.system(protoc_command) != 0:
        raise Exception("Protoc failed")


def update_golang():
    go_path = get_language_dir('go')
    go_proto_path = join(go_path, 'proto')
    clean_proto_dir(go_proto_path)
    run_protoc({'go_out': go_proto_path, 'go-grpc_out': go_proto_path},
               {'go_opt': 'module=github.com/trinsic-id/sdk', 'go-grpc_opt': 'module=github.com/trinsic-id/sdk'},
               get_proto_files())
    # Remove okapi proto folder
    shutil.rmtree(join(go_proto_path, 'go'))
    # find and replace the sdk proto with okapi proto
    replace_pairs = {'okapiproto "github.com/trinsic-id/sdk/go/okapiproto"':
                     'okapiproto "github.com/trinsic-id/okapi/go/okapiproto"'}
    for file_name in glob.glob(join(go_proto_path, '*.go')):
        update_line(file_name, replace_pairs)


def update_ruby():
    ruby_path = get_language_dir('ruby')
    ruby_proto_path = join(ruby_path, 'lib')
    # TODO - clean selectively
    run_protoc({'ruby_out': ruby_proto_path, 'grpc_out': ruby_proto_path}, {}, get_proto_files(),
               protoc_executable='grpc_tools_ruby_protoc')
    # TODO - Ruby type specifications


def update_java():
    java_path = get_language_dir('java')
    java_proto_path = join(java_path, 'src', 'main', 'java')
    # TODO - clean_proto_dir(java_proto_path)
    # Download: https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/1.42.1/
    # Download: https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/1.2.0/
    # Add to path and rename to `protoc-gen-grpc-java`
    run_protoc({'java_out': java_proto_path, 'grpc-java_out': java_proto_path}, {}, get_proto_files())
    # For Kotlin, you need the jar file, and a batch file on the path called: `protoc-gen-grpc-kotlin`
    # Containing: @"C:\Program Files\Java\jre1.8.0_311\bin\java.exe" -jar "%~dp0/protoc-gen-grpc-kotlin-1.2.0-jdk7.jar" %*
    run_protoc({'grpc-kotlin_out': java_proto_path}, {}, get_proto_files())
    # remove okapi pbmse
    shutil.rmtree(join(java_proto_path, 'trinsic', 'okapi'))


def update_markdown():
    lang_path = get_language_dir('docs')
    lang_proto_path = join(lang_path, 'reference', 'proto')
    # https://github.com/pseudomuto/protoc-gen-doc
    # go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc
    run_protoc({'doc_out': lang_proto_path}, {'doc_opt': 'markdown,index.md'}, get_proto_files())


def update_node():
    lang_path = get_language_dir('node')
    lang_proto_path = join(lang_path,'src', 'proto')
    clean_proto_dir(lang_proto_path)

    # executable paths
    node_protoc_executable = join(lang_path,'node_modules','.bin','grpc_tools_node_protoc.cmd')
    typescript_protoc_executable = join(lang_path,'node_modules','.bin','protoc-gen-ts.cmd')

    # JavaScript code generation
    run_protoc({'grpc_out': f'grpc_js:{lang_proto_path}'}, {'js_out': f'import_style=commonjs,binary:{lang_proto_path}'}, get_proto_files(), 
        protoc_executable=node_protoc_executable)
    # TypeScript definitions
    run_protoc({'ts_out': f'grpc_js:{lang_proto_path}'}, {}, get_proto_files(), plugin=f'protoc-gen-ts={typescript_protoc_executable}',
        protoc_executable=typescript_protoc_executable)


def update_python():
    """
    Generate the protobuf interface files using the python library https://github.com/danielgtaylor/python-betterproto
    :return:
    """
    # Remove everything under output directory
    python_proto_path = join(get_language_dir('python'), "trinsic", "proto")
    clean_proto_dir(python_proto_path)
    # Paths for proto compilation
    file_path = abspath(dirname(abspath(__file__)))
    base_path = abspath(join(file_path, '..', 'proto'))
    proto_file_path = abspath(join(base_path, "**", "*.proto"))
    # Come up with better locations, import google defaults from the package location (see code in protoc.main)
    proto_include = pkg_resources.resource_filename('grpc_tools', '_proto').replace("lib", "Lib")
    # Inject an empty python code file path to mimic the first argument.
    base_command = ['', '-I', get_language_dir('proto'), f'--python_betterproto_out={python_proto_path}']
    base_command.extend(get_proto_files())
    base_command.append(f'-I{proto_include}')
    print(base_command)
    protoc.main(base_command)


def main():
    # update_golang()
    # update_ruby()
    # update_java()
    # update_markdown()
    # update_python()
    update_node()


if __name__ == "__main__":
    main()
