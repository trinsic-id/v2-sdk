"""
Generate the language bindings from the proto files.
"""
import glob
import os
import shutil
import urllib.request
from os.path import abspath, join, dirname
from typing import List, Dict, Union

import pkg_resources
from grpc_tools import protoc

from build_sdks import update_line


def protoc_plugin_versions(key: str = None) -> Union[str, dict[str, str]]:
    version_dict = {'java': '1.42.1', 'kotlin': '1.2.0'}
    if key:
        return version_dict[key]
    else:
        return version_dict


def protoc_plugin_path() -> dict[str, str]:
    raise NotImplementedError


def download_protoc_plugins() -> None:
    plugin_path = join(dirname(__file__), 'protoc-plugins')
    clean_dir(plugin_path)

    java_plugin = join(plugin_path, 'protoc-gen-grpc-java.exe')
    kotlin_jar = join(plugin_path, 'protoc-gen-grpc-kotlin.jar')
    kotlin_plugin = join(plugin_path, 'protoc-gen-grpc-kotlin.cmd')
    # For Kotlin, you need the jar file, and a batch file on the path called: `protoc-gen-grpc-kotlin`
    # Containing: @"C:\Program Files\Java\jre1.8.0_311\bin\java.exe" -jar "%~dp0/protoc-gen-grpc-kotlin-1.2.0-jdk7.jar" %*
    java_plugin_version = protoc_plugin_versions("java")
    kotlin_plugin_version = protoc_plugin_versions("java")
    urllib.request.urlretrieve(
        f'https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/{java_plugin_version}/protoc-gen-grpc-java-{java_plugin_version}-windows-x86_64.exe',
        java_plugin)
    urllib.request.urlretrieve(
        f'https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/{kotlin_plugin_version}/protoc-gen-grpc-kotlin-{kotlin_plugin_version}-jdk7.jar',
        kotlin_jar)

    with open(kotlin_plugin, 'w') as fid:
        # TODO - Make that java jre path generic
        fid.write(
            r'@"C:\Program Files\Java\jre1.8.0_311\bin\java.exe" -jar "%~dp0/protoc-gen-grpc-kotlin-1.2.0-jdk7.jar" %*')
    # go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc
    os.system('go get -u github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc')
    # TODO - Ruby grpc protoc tools install
    # TODO - Ruby RBS protoc tools install
    # TODO - Node grpc protoc tools install
    raise NotImplementedError


def get_language_dir(language_name: str) -> str:
    """
    Get the directory for the given language SDK
    :param language_name: The language directory
    :return: Absolute path to the given language SDK
    """
    return abspath(join(dirname(abspath(__file__)), '..', language_name))


def get_proto_files(dir_name: str = None) -> List[str]:
    dir_name = dir_name or get_language_dir('proto')
    proto_search_glob = join(dir_name, '**', '*.proto')
    return [abspath(file_path) for file_path in glob.glob(proto_search_glob, recursive=True)]


def clean_dir(language_proto_dir: str) -> None:
    try:
        shutil.rmtree(language_proto_dir)
    except:
        pass
    os.mkdir(language_proto_dir)


def join_args(args: Union[List[str], Dict[str, str]]) -> str:
    if isinstance(args, dict):
        return " ".join([f'--{key}="{value}"' for (key, value) in args.items()]) if args else ''
    else:
        return " ".join(args)


def run_protoc(language_options: Dict[str, str] = None,
               custom_options: Union[List[str], Dict[str, str]] = None,
               proto_files: Union[List[str], str] = None,
               plugin: str = None,
               protoc_executable: str = 'protoc') -> None:
    language_arg_string = join_args(language_options)
    proto_path_string = f'--proto_path="{get_language_dir("proto")}"'
    custom_options_string = join_args(custom_options)
    proto_files_string = " ".join(proto_files) if isinstance(proto_files, list) else proto_files
    plugin_string = f'--plugin="{plugin}"' if plugin else ''
    protoc_command = f'{protoc_executable} {plugin_string} {proto_path_string} {language_arg_string} {custom_options_string} {proto_files_string}'
    print(protoc_command)
    if os.system(protoc_command) != 0:
        raise Exception("Protoc failed")


def update_golang():
    go_path = get_language_dir('go')
    go_proto_path = join(go_path, 'proto')
    clean_dir(go_proto_path)
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
    # TODO - clean_dir(java_proto_path)
    run_protoc({'java_out': java_proto_path, 'grpc-java_out': java_proto_path}, {}, get_proto_files())
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
    lang_proto_path = join(lang_path, 'src', 'proto')
    clean_dir(lang_proto_path)

    # executable paths
    node_protoc_executable = join(lang_path, 'node_modules', '.bin', 'grpc_tools_node_protoc.cmd')
    typescript_protoc_executable = join(lang_path, 'node_modules', '.bin', 'protoc-gen-ts.cmd')

    # JavaScript code generation
    run_protoc({'grpc_out': f'grpc_js:{lang_proto_path}'},
               {'js_out': f'import_style=commonjs,binary:{lang_proto_path}'}, get_proto_files(),
               protoc_executable=node_protoc_executable)
    # TypeScript definitions
    run_protoc({'ts_out': f'grpc_js:{lang_proto_path}'}, {'plugin': f'protoc-gen-ts={typescript_protoc_executable}'},
               get_proto_files(),
               protoc_executable=node_protoc_executable)


def update_python():
    """
    Generate the protobuf interface files using the python library https://github.com/danielgtaylor/python-betterproto
    :return:
    """
    # Remove everything under output directory
    python_proto_path = join(get_language_dir('python'), "trinsic", "proto")
    clean_dir(python_proto_path)
    # Come up with better locations, import google defaults from the package location (see code in protoc.main)
    proto_include = pkg_resources.resource_filename('grpc_tools', '_proto').replace("lib", "Lib")
    # Inject an empty python code file path to mimic the first argument.
    run_protoc({'python_betterproto_out': python_proto_path}, [f'-I{proto_include}'],
               proto_files=get_proto_files())
    base_command = ['', '-I', get_language_dir('proto'), f'--python_betterproto_out={python_proto_path}']
    base_command.extend(get_proto_files())
    base_command.append(f'-I{proto_include}')
    print(base_command)
    # protoc.main(base_command)


def main():
    update_golang()
    update_ruby()
    update_java()
    update_markdown()
    update_python()
    update_node()


if __name__ == "__main__":
    main()
