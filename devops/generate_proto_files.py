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

from build_sdks import update_line, clean_dir, get_language_dir


def protoc_plugin_versions(key: str = None) -> Union[str, Dict[str, str]]:
    version_dict = {'java': '1.42.1', 'kotlin': '1.2.0', 'mkdocs': 'v1.5.0'}
    if key:
        return version_dict[key]
    else:
        return version_dict


def plugin_path() -> str:
    return join(dirname(__file__), 'protoc-plugins')


def java_plugin() -> str:
    return join(plugin_path(), 'protoc-gen-grpc-java.exe')


def kotlin_plugin() -> str:
    return join(plugin_path(), 'protoc-gen-grpc-kotlin.cmd')


def download_protoc_plugins() -> None:
    clean_dir(plugin_path())
    kotlin_jar = join(plugin_path(), 'protoc-gen-grpc-kotlin.jar')

    java_plugin_version = protoc_plugin_versions("java")
    kotlin_plugin_version = protoc_plugin_versions("kotlin")
    urllib.request.urlretrieve(
        f'https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/{java_plugin_version}/protoc-gen-grpc-java-{java_plugin_version}-windows-x86_64.exe',
        java_plugin())
    urllib.request.urlretrieve(
        f'https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/{kotlin_plugin_version}/protoc-gen-grpc-kotlin-{kotlin_plugin_version}-jdk7.jar',
        kotlin_jar)

    with open(kotlin_plugin(), 'w') as fid:
        fid.write(f'@java.exe -jar "%~dp0/{kotlin_jar}" %*')


def get_proto_files(dir_name: str = None) -> List[str]:
    dir_name = dir_name or get_language_dir('proto')
    return get_matching_files(dir_name, '*.proto')


def get_matching_files(dir_name: str, extension: str) -> List[str]:
    if not extension.startswith('*.'):
        extension = f'*.{extension}'
    search_glob = join(dir_name, '**', extension)
    return [abspath(file_path) for file_path in glob.glob(search_glob, recursive=True)]


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
    plugin_string = f'--plugin={plugin}' if plugin else ''
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
    replace_pairs = {
        'okapiproto "github.com/trinsic-id/sdk/go/okapiproto"': 'okapiproto "github.com/trinsic-id/okapi/go/okapiproto"'}
    for file_name in glob.glob(join(go_proto_path, '*.go')):
        update_line(file_name, replace_pairs)


def update_ruby():
    ruby_path = get_language_dir('ruby')
    ruby_proto_path = join(ruby_path, 'lib')
    # Clean selectively
    clean_dir(join(ruby_proto_path, 'services'))
    clean_dir(join(ruby_proto_path, 'sdk'))
    clean_dir(join(ruby_proto_path, 'pbmse'))
    run_protoc({'ruby_out': ruby_proto_path, 'grpc_out': ruby_proto_path}, {}, get_proto_files(),
               protoc_executable='grpc_tools_ruby_protoc')
    # Ruby type specifications
    run_protoc({'rbi_out': f"grpc=true:{ruby_proto_path}"}, {}, get_proto_files(), plugin="protoc-gen-rbi=C:\personal\protoc-gen-rbi\protoc-gen-rbi.exe")


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
    run_protoc({'doc_out': lang_proto_path}, {'doc_opt': 'markdown,index.md'}, get_proto_files())


def update_node():
    lang_path = get_language_dir('node')
    lang_proto_path = join(lang_path, 'src', 'proto')
    # Clean selectively
    clean_dir(join(lang_proto_path, 'services'))
    clean_dir(join(lang_proto_path, 'sdk'))
    clean_dir(join(lang_proto_path, 'pbmse'))

    # TODO - Make this cross-platform
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


def update_web():
    lang_path = get_language_dir('web')
    lang_proto_path = join(lang_path, 'src', 'proto')
    # Clean selectively
    clean_dir(join(lang_proto_path, 'services'))
    clean_dir(join(lang_proto_path, 'sdk'))
    clean_dir(join(lang_proto_path, 'pbmse'))
    # TODO - Make this cross-platform

    # code generation
    run_protoc({'grpc-web_out': f'import_style=typescript,mode=grpcwebtext:{lang_proto_path}'},
               {'js_out': f'import_style=commonjs,binary:{lang_proto_path}'}, get_proto_files(),
               plugin='protoc-gen-grpc-web.exe')


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


def update_dotnet():
    lang_path = get_language_dir('dotnet')
    lang_proto_path = join(lang_path, 'Trinsic', 'proto')
    clean_dir(lang_path)
    run_protoc({'csharp_out': lang_path, 'grpc-csharp_out': lang_proto_path}, {}, get_proto_files())


def main():
    download_protoc_plugins()
    update_golang()
    update_ruby()
    update_java()
    update_markdown()
    update_python()
    update_node()
    update_web()
    # update_dotnet()


if __name__ == "__main__":
    main()
