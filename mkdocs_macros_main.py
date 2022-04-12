"""
Import a subsection of another markdown file
"""

from requests import head


def define_env(env):
    chatter = env.start_chatting("Include Markdown Sections")
    
    @env.macro
    def include_section(file_name: str, section_name: str, include_heading: bool=False):
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