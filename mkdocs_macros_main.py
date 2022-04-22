"""
Macros created by Trinsic for documentation site
"""

from requests import head
from os.path import abspath, relpath, join, dirname, exists
from pathlib import Path


def define_env(env):
    @env.macro
    def include_section(file_name: str, section_name: str, include_heading: bool=False):
        """
        Import a subsection of another markdown file
        """
        chatter = env.start_chatting("Include Markdown Sections")

        docs_path = join(dirname(__file__), "docs/")
        file_path = Path(abspath(join(docs_path, file_name)))

        # Ensure file exists
        if not file_path.is_file():
            return f"File {file_name} not found to inject from."

        markdown_text = file_path.read_text()
        markdown_lines = markdown_text.split('\n')
        header_indexes = [(index, line) for index, line in enumerate(markdown_lines) if line.strip().startswith("#")]
        # Append a section for the end
        header_indexes.append((len(markdown_lines),"<<INVALID>>"))
        for (ij, index_tuple) in enumerate(header_indexes):
            index, header_line = index_tuple
            if section_name in header_line:
                chatter(f"Found section={header_line}")
                next_index=header_indexes[ij+1][0]
                if not include_heading:
                    index+=1
                return "\n".join(markdown_lines[index:next_index])
                
        return f"TODO: Include {file_name}#{section_name} {'with' if include_heading else 'without'} heading"
    
    @env.macro
    def proto_obj(obj: str, header_text: str=None):
        """
        Inject documentation for specified protobuf message
        """

        chatter = env.start_chatting("Include Protobuf Object")
        chatter(f"Including protobuf object {obj}")

        if header_text is None:
            header_text = obj

        section_contents = include_section('reference/proto/index.md', obj)

        return (
            "<div class='proto-obj-container' markdown>"
                f"<div class='proto-obj-header' markdown>[{header_text}](/reference/proto#{obj.lower()})</div>"
                f"<div class='proto-obj-contents' markdown>{section_contents}</div>"
            "</div>"
        )