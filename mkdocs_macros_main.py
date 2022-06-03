"""
Macros created by Trinsic for documentation site
"""

from requests import head
from os.path import abspath, relpath, join, dirname, exists
from pathlib import Path
import json

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
    def proto_method(method_name: str):
        method = get_entity(method_name)
        
        request_html = proto_obj(method["input_type"])
        response_html = proto_obj(method["output_type"])

        ret = ""
        ret += "<div class='center-next-tabs'></div>\n"
        ret += '===! "Request" \n'
        ret += f"    {request_html}\n"
        ret += '=== "Response"\n'
        ret += f"    {response_html}\n"

        return str(ret)

    @env.macro
    def proto_obj(str: str):
        """
        Generate documentation for specified protobuf message
        """
        
        return print_message(str).replace("\n","").replace("\r","")

    @env.macro
    def all_proto_objs():
        proto_json = get_proto_json()

        ret = ""

        for messageName in proto_json["messages"]:
            ret += print_message(messageName)
            # ret += "<br/>"

        return ret

def print_message(messageName: str, context: str = None):
    entity = get_entity(messageName)

    message_desc = entity['description'].replace("\n", " ").replace("\r", " ")

    ret = (
        f"<div class='proto-obj-container' data-proto-name='{entity['full_name']}'>"
        f"<div class='proto-obj-name'><a name='{entity['full_name']}' href='/reference/proto#{entity['full_name']}'>{entity['name']}</a></div>"
        f"<div class='proto-obj-description'>{message_desc}</div>"
    )

    if len(entity["fields"]) > 0:
        ret += print_message_fields(messageName, context)
    else:
        ret += "<i style='display:block; font-size: 0.65rem; margin-top: 0.5rem'>This message has no fields</i>"

    ret += "</div>"

    return ret

def print_message_fields(messageName: str, context: str = None):
    entity = get_entity(messageName)

    fields = "<div class='proto-obj-fields'>"

    for fieldName in entity["fields"]:
        fields += print_field(fieldName, context)

    fields += "</div>"

    return fields

def print_field(fieldName, context: str = None):
    field = get_entity(fieldName)
    is_prim = field_is_primitive(field)
    
    field_type = field["type"]

    if not is_prim:
        field_type = f"<a href='/reference/proto#{field['full_type']}'>{field['type']}</a>"

    if field["label"] == "LABEL_REPEATED":
        field_type += "[]"

    if "options" in field and "services.options.optional" in field["options"]:
        field_type = "optional " + field_type

    field_short_name = field['name']
    if context is not None:
        field_short_name = f"<span class='proto-obj-subtype-context'>{context}.</span>{field_short_name}"

    field_desc = field["description"].replace("\n", " ").replace("\r", " ")

    ret = (
        "<div class='proto-field'>"
            f"<div class='proto-field-name'>{field_short_name}</div> "
            f"<div class='proto-field-type'>{field_type}</div>"
            f"<div class='proto-field-description'>{field_desc}</div>"
    )

    if not is_prim:
        field_type_index = get_index_entry(field["full_type"])
        if field_type_index["type"] == "message":
            if context is None:
                context = field['name']
            else:
                context += f".{field['name']}"
            
            sub_content = print_message_fields(field["full_type"], context)
            ret += (
                f"<div class='proto-field-expand-btn' onclick='onClick(this);'>Show child attributes</div>"
                f"<div class='proto-field-sub-child hidden'>{sub_content}</div>"
            )


    ret += "</div>"
    return ret

#             {{if eq $field_is_primitive false}}
#               {{if eq .Type "ConfirmationMethod"}}
#               {{else}}
#                 <div class="proto-field-expand-btn" onclick="onClick(this, '{{.FullType | anchor}}');">Show child attributes</div>
#                 <div class="proto-field-sub-child empty hidden"></div>
#               {{end}}
#             {{end}}
#           </div>"

def field_is_primitive(field):
    return field["type"] == field["full_type"]

def get_index_entry(name: str):
    proto_json = get_proto_json()

    return proto_json["index"][name]

def get_entity(name: str):
    proto_json = get_proto_json()
    index_entry = get_index_entry(name)

    return proto_json[index_entry["collection"]][name]
    

__proto_json = None
def get_proto_json():
    global __proto_json
    if __proto_json is None:
        docs_path = join(dirname(__file__), "docs/reference/proto/proto.json")
        file_path = Path(docs_path)

        # Ensure file exists
        if not file_path.is_file():
            return f"File {file_path} not found to inject from."

        jsonStr = file_path.read_text()
        __proto_json = json.loads(jsonStr)

    return __proto_json