"""
Macros created by Trinsic for documentation site
"""

from requests import head


def define_env(env):
    chatter = env.start_chatting("Include Markdown Sections")
    
    @env.macro
    def include_section(file_name: str, section_name: str, include_heading: bool=False):
        """
        Import a subsection of another markdown file
        """
        pages = env.variables['navigation'].pages
        reference_page = [page for page in pages if page.url == file_name][0]
        markdown_lines = reference_page.markdown.split('\n')
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

        if header_text is None:
            header_text = obj

        section_contents = include_section('reference/proto/', obj)

        return (
            "<div class='proto-obj-container' markdown>"
                f"<div class='proto-obj-header' markdown>[{header_text}](/reference/proto#{obj.lower()})</div>"
                f"<div class='proto-obj-contents' markdown>{section_contents}</div>"
            "</div>"
        )