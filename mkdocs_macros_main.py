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
    def proto_sample_start():
        """
        Generates the "Sample" tab header, along with its prefix centering div.
        """
        ret = "<div class='center-next-tabs'></div>\n"
        ret += '=== ":material-code-tags: Sample"'

        return ret

    @env.macro
    def proto_method_tabs(method_name: str):
        """
        Generates the "Request" and "Response" tabs documenting
        a protobuf method's inputs and outputs.
        """

        # Get method
        method = get_entity(method_name)
        
        # The content of the Request and Response tabs is just
        # the rendered input / output types.
        request_html = proto_obj(method["input_type"])
        response_html = proto_obj(method["output_type"])

        ret = ""
        ret += '=== ":material-call-made: Request" \n'
        ret += f"    {request_html}\n"
        ret += '=== ":material-call-received: Response"\n'
        ret += f"    {response_html}\n"

        return str(ret)

    @env.macro
    def proto_obj(str: str):
        """
        Generates the documentation for a specific protobuf message.
        """
        
        return print_message(str).replace("\n","").replace("\r","")

    @env.macro
    def all_proto_objs():
        """
        Prints all protobuf objects in file order
        """
        proto_json = get_proto_json()

        ret = ""

        for messageName in proto_json["messages"]:
            ret += print_message(messageName)
            # ret += "<br/>"

        return ret


###### Helper methods below

def print_message(messageName: str, context: str = None):
    """
    Generates the HTML for a protobuf message's documentation
    """

    try:
        # Fetch the protobuf message by name
        entity = get_entity(messageName)

        # Replace newlines in the comments of the message with spaces
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
    except Exception as e:
        return f"Cannot print proto message: {e}"


def print_message_fields(messageName: str, context: str = None):
    """
    Generates the HTML for just a protobuf message's fields.
    Does not include the message name or description.
    """

    # Fetch message
    entity = get_entity(messageName)

    fields = "<div class='proto-obj-fields'>"

    # Print each field in order
    for fieldName in entity["fields"]:
        fields += print_field(fieldName, context)

    fields += "</div>"

    return fields

def print_field(fieldName, context: str = None):
    """
    Generates the HTML for a single protobuf field.
    Also generates the HTML for expandable sub-types if the field is non-primitive.
    """

    # Get field by name
    field = get_entity(fieldName)

    # Determine if field is primitive (non-primitive types get expanded)
    is_prim = field_is_primitive(field)
    
    field_type = field["type"]

    # Don't generate links to primitive types
    if not is_prim:
        field_type = f"<a href='/reference/proto#{field['full_type']}'>{field['type']}</a>"

    # Add array indicator
    # TODO: Do a better job of handling "Entry" types
    if field["label"] == "LABEL_REPEATED":
        field_type += "[]"

    # If the "optional" option is set, display that
    # TODO: Better presentation of optional designation
    if "options" in field and "services.options.optional" in field["options"]:
        field_type = "optional " + field_type

    field_short_name = field['name']

    # If this is a field for a nested message, add the context
    # IE, `details` -> `details.account` -> `details.account.id`
    if context is not None:
        field_short_name = f"<span class='proto-obj-subtype-context'>{context}.</span>{field_short_name}"

    # Replace newlines in the field's comments with spaces
    field_desc = field["description"].replace("\n", " ").replace("\r", " ")

    ret = (
        "<div class='proto-field'>"
            f"<div class='proto-field-name'>{field_short_name}</div> "
            f"<div class='proto-field-type'>{field_type}</div>"
            f"<div class='proto-field-description'>{field_desc}</div>"
    )

    # If the message isn't primitive, expand its type and document it
    if not is_prim:
        # Get entry in protoc-gen-json index of types.
        field_type_index = get_index_entry(field["full_type"])

        # If `full_type` points to a Message, document it as a message
        if field_type_index["type"] == "message":
            # Add the current field name to `context`
            if context is None:
                context = field['name']
            else:
                context += f".{field['name']}"
            
            # Embed just the sub-type's fields, not its name or description
            sub_content = print_message_fields(field["full_type"], context)

            ret += (
                f"<div class='proto-field-expand-btn' onclick='onClick(this);'>Show child attributes</div>"
                f"<div class='proto-field-sub-child hidden'>{sub_content}</div>"
            )


    ret += "</div>"
    return ret

def field_is_primitive(field):
    """
    Determines if a field's protobuf type is primitive (string/bool/etc.) or not (AccountDetails/etc.)

    The logic here is that generated types, if primitive, will just be EG "string"/string",
    whereas a Message might be "AccountDetails"/"services.account.v1.AccountDetails"
    """
    return field["type"] == field["full_type"]

def get_index_entry(name: str):
    """
    Fetch a proto.json index entry by its Fully Qualified Name
    """

    proto_json = get_proto_json()
    index = proto_json["index"]

    if name not in index:
        raise Exception(f"Cannot find protobuf object with name {name}")

    return index[name]

def get_entity(name: str):
    """
    Get a proto.json entity by its Fully Qualified Name.

    This will find the entity's index entry
    """
    proto_json = get_proto_json()
    index_entry = get_index_entry(name)

    return proto_json[index_entry["collection"]][name]
    

__proto_json = None
def get_proto_json():
    """
    Returns a deserialized `proto.json`

    On first call, this loads proto.json into memory and caches it for subsequent calls.
    """
    global __proto_json
    if __proto_json is None:
        docs_path = join(dirname(__file__), "docs/_static/proto.json")
        file_path = Path(docs_path)

        # Ensure file exists
        if not file_path.is_file():
            raise Exception("Cannot find proto.json")

        __proto_json = json.loads(file_path.read_text())

    return __proto_json