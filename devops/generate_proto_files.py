"""
Generate the language bindings from the proto files.
"""
import glob
import itertools
import logging
import os
import subprocess
from platform import system
import shutil
import urllib.request
from os.path import abspath, join, dirname
from typing import List, Dict, Union

import importlib.resources

from build_sdks import update_line, clean_dir, get_language_dir


def protoc_plugin_versions(key: str = None) -> Union[str, Dict[str, str]]:
    version_dict = {'java': '1.42.1', 'kotlin': '1.2.0', 'mkdocs': 'v1.5.0'}
    if key:
        return version_dict[key]
    else:
        return version_dict


def plugin_path() -> str:
    return abspath(join(dirname(__file__), 'protoc-plugins'))


def java_plugin() -> str:
    return abspath(join(plugin_path(), 'protoc-gen-grpc-java.exe'))


def kotlin_plugin() -> str:
    return abspath(join(plugin_path(), f'protoc-gen-grpc-kotlin.{"cmd" if system() == "Windows" else "sh"}'))


def download_protoc_plugins() -> None:
    clean_dir(plugin_path())
    kotlin_jar = join(plugin_path(), 'protoc-gen-grpc-kotlin.jar')

    java_plugin_version = protoc_plugin_versions("java")
    kotlin_plugin_version = protoc_plugin_versions("kotlin")
    urllib.request.urlretrieve(
        f'https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-java/{java_plugin_version}/protoc-gen-grpc-java-{java_plugin_version}-{system().lower()}-x86_64.exe',
        java_plugin())
    urllib.request.urlretrieve(
        f'https://repo1.maven.org/maven2/io/grpc/protoc-gen-grpc-kotlin/{kotlin_plugin_version}/protoc-gen-grpc-kotlin-{kotlin_plugin_version}-jdk7.jar',
        kotlin_jar)

    with open(kotlin_plugin(), 'w') as fid:
        if system().lower() == 'windows':
            fid.write(f'@java.exe -jar "{kotlin_jar}" %*')
        else:
            fid.write(f'java -jar {kotlin_jar} "$@')

    if system().lower() == "linux":
        os.system(f"chmod +x {java_plugin()}")
        os.system(f"chmod +x {kotlin_plugin()}")


def get_proto_files(dir_name: str = None) -> List[str]:
    dir_name = dir_name or get_language_dir('proto')
    return get_matching_files(dir_name, '*.proto')


def get_matching_files(dir_name: str, extension: str) -> List[str]:
    if not extension.startswith('*.'):
        extension = f'*.{extension}'
    search_glob = join(dir_name, '**', extension)
    return [abspath(file_path) for file_path in glob.glob(search_glob, recursive=True)]


def join_args(args: Union[str, List[str], Dict[str, str]]) -> List[str]:
    if isinstance(args, dict):
        return [f'--{key}="{value}"' for (key, value) in args.items()] if args else []
    elif isinstance(args, list):
        return args
    else:
        return [args]


def run_protoc(language_options: Dict[str, str] = None,
               custom_options: Union[List[str], Dict[str, str]] = None,
               proto_files: Union[List[str], str] = None,
               plugin: str = None,
               protoc_executable: str = 'protoc') -> None:
    proto_path_string = f'--proto_path="{get_language_dir("proto")}"'
    plugin_string = f'--plugin={plugin}' if plugin else ''
    command_args = [protoc_executable, plugin_string, proto_path_string, join_args(language_options), join_args(custom_options)]
    command_args.extend(join_args(proto_files))
    # Regularize 2D array and flatten
    command_args = [arg_list if isinstance(arg_list, list) else [arg_list] for arg_list in command_args ]
    command_args = list(itertools.chain(*command_args))
    # Strip blank arguments because protoc WILL DIE, and do so passive aggresive
    command_args = [arg for arg in command_args if arg]
    logging.info(command_args)
    # output = subprocess.run(command_args, capture_output=True)
    # output.check_returncode()
    if os.system(" ".join(command_args)) != 0:
        raise Exception("protoc failed")


def update_golang():
    go_path = get_language_dir('go')
    go_proto_path = join(go_path, 'proto')
    clean_dir(go_proto_path)
    run_protoc({'go_out': go_proto_path, 'go-grpc_out': go_proto_path},
               {'go_opt': 'module=github.com/trinsic-id/sdk', 'go-grpc_opt': 'module=github.com/trinsic-id/sdk'},
               get_proto_files())
    # Remove okapi proto folder
    clean_dir(join(go_proto_path, 'go'))
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
    run_protoc({'rbi_out': f"grpc=true:{ruby_proto_path}"}, {}, get_proto_files())


def update_java():
    java_path = get_language_dir('java')
    lang_proto_path = join(java_path, 'src', 'main', 'java')
    java_services = join(lang_proto_path, 'trinsic', 'services')
    for subdir in os.listdir(java_services):
        java_subdir = join(java_services, subdir)
        if os.path.isdir(java_subdir):
            clean_dir(java_subdir)
    clean_dir(join(lang_proto_path, 'trinsic', 'sdk'))
    clean_dir(join(lang_proto_path, 'trinsic', 'pbmse'))

    run_protoc({'java_out': lang_proto_path, 'grpc-java_out': lang_proto_path}, {}, get_proto_files(),
               plugin=f"protoc-gen-grpc-java={java_plugin()}")
    run_protoc({'grpc-kotlin_out': lang_proto_path}, {}, get_proto_files(), plugin=f"protoc-gen-grpc-kotlin={kotlin_plugin()}")
    # remove okapi pbmse
    clean_dir(join(lang_proto_path, 'trinsic', 'okapi'))


def update_markdown():
    lang_path = get_language_dir('docs')
    lang_proto_path = join(lang_path, 'reference', 'proto')
    run_protoc({'doc_out': lang_proto_path}, {'doc_opt': 'markdown,index.md'}, get_proto_files())


def update_python():
    """
    Generate the protobuf interface files using the python library https://github.com/danielgtaylor/python-betterproto
    :return:
    """
    # Remove everything under output directory
    python_proto_path = join(get_language_dir('python'), "trinsic", "proto")
    clean_dir(python_proto_path)
    # Inject an empty python code file path to mimic the first argument.
    run_protoc({'python_betterproto_out': python_proto_path}, {}, proto_files=get_proto_files())


def main():
    logging.getLogger().setLevel(logging.INFO)
    download_protoc_plugins()
    update_golang()
    update_ruby()
    update_markdown()
    update_python()
    update_java()


if __name__ == "__main__":
    main()
