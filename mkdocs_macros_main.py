"""
Macros created by Trinsic for documentation site
"""

import json
from os.path import abspath, join, dirname
from pathlib import Path


def define_env(env):
    @env.macro
    def include_section(
        file_name: str, section_name: str, include_heading: bool = False
    ):
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
        markdown_lines = markdown_text.split("\n")
        header_indexes = [
            (index, line)
            for index, line in enumerate(markdown_lines)
            if line.strip().startswith("#")
        ]
        # Append a section for the end
        header_indexes.append((len(markdown_lines), "<<INVALID>>"))
        for (ij, index_tuple) in enumerate(header_indexes):
            index, header_line = index_tuple
            if section_name in header_line:
                chatter(f"Found section={header_line}")
                next_index = header_indexes[ij + 1][0]
                if not include_heading:
                    index += 1
                return "\n".join(markdown_lines[index:next_index])

        return f"TODO: Include {file_name}#{section_name} {'with' if include_heading else 'without'} heading"

    @env.macro
    def proto_sample_create_service(service_name: str = ""):
        # Get method
        service_base_name = service_name[service_name.rindex(".")+1:]
        service_file_name = f"{service_base_name.lower()}_service_examples"
        block_name = f"create{service_base_name}Service"
        # TODO - Handle a folder for the Trinsic CLI examples
        return f"""
=== "Trinsic CLI"
    ```bash
    trinsic vc issue --document <JSONLD_FILE> --out <OUTPUT_FILE>
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    [{block_name}](../../../web/test/{service_file_name}.spec.ts) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [{block_name}](../../../dotnet/Tests/{service_file_name}.cs) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Dart"
    <!--codeinclude-->
    ```dart
    [{block_name}](../../../dart/example/{service_file_name}.dart) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Python"
    <!--codeinclude-->
    ```python
    [{block_name}](../../../python/samples/{service_file_name}.py) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [{block_name}](../../../go/examples/{service_file_name}_test.go) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [{block_name}](../../../java/src/test/java/trinsic/{service_file_name}.java) inside_block:{block_name}
    ```
    <!--/codeinclude-->
"""

    @env.macro
    def proto_sample_code(method_name: str = ""):
        # Get method
        method_bits = method_name.split(".")
        method_base_name = method_bits[-1]
        service_base_name = method_bits[-2]
        service_file_name = f"{service_base_name.lower()}_service_examples"
        block_name = f"{service_base_name}Service{method_base_name}"
        return f"""
=== "Trinsic CLI"
    ```bash
    trinsic vc issue --document <JSONLD_FILE> --out <OUTPUT_FILE>
    ```

=== "TypeScript"
    <!--codeinclude-->
    ```typescript
    [{block_name}](../../../web/test/{service_file_name}.spec.ts) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "C#"
    <!--codeinclude-->
    ```csharp
    [{block_name}](../../../dotnet/Tests/{service_file_name}.cs) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Dart"
    <!--codeinclude-->
    ```dart
    [{block_name}](../../../dart/example/{service_file_name}.dart) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Python"
    service_file_name=`{service_file_name}`
    block_name=`{block_name}`
    <!--codeinclude-->
    ```python
    [{block_name}](../../../python/samples/{service_file_name}.py) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Go"
    <!--codeinclude-->
    ```golang
    [{block_name}](../../../go/examples/{service_file_name}_test.go) inside_block:{block_name}
    ```
    <!--/codeinclude-->

=== "Java"
    <!--codeinclude-->
    ```java
    [{block_name}](../../../java/src/test/java/trinsic/{service_file_name}.java) inside_block:{block_name}
    ```
    <!--/codeinclude-->
"""

    @env.macro
    def proto_sample_start(method_name: str = ""):
        """
        Generates the "Sample" tab header, along with its prefix centering div.
        """
        # The `method_name` parameter isn't used by us, but by protoc-gen-sdk to find all the headers
        ret = "<div class='proto-method-tabs-marker'></div>\n"
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
        request_html = proto_message(method["input_type"])
        response_html = proto_message(method["output_type"])

        ret = ""
        ret += '=== ":material-call-made: Request" \n'
        ret += f"    {request_html}\n"
        ret += '=== ":material-call-received: Response"\n'
        ret += f"    {response_html}\n"

        return str(ret)

    @env.macro
    def proto_message(name: str):
        """
        Generates the documentation for a specific protobuf message.
        """

        return print_message(name).replace("\n", "").replace("\r", "")

    @env.macro
    def proto_enum(name: str):
        """
        Generates the documentation for a specific protobuf enum.
        """

        return print_enum(name).replace("\n", "").replace("\r", "")

    @env.macro
    def proto_event(name: str):
        """
        Generates the documentation for a specific protobuf event.

        A "protobuf event" is a protobuf message which is used as the payload
        for a webhook (EGFCreated, Ping, etc.)
        """

        return print_event(name).replace("\n", "").replace("\r", "")

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

    @env.macro
    def all_proto_events():
        """
        Prints all protobuf events -- intended for usage in the Events Reference docs page
        """
        IGNORE_MESSAGES = [
            "trinsic.services.event.Event",
            "trinsic.services.event.APICall",
        ]

        proto_json = get_proto_json()
        file = proto_json["files"]["services/event/v1/event.proto"]
        messages = file["messages"]

        ret = ""

        for messageName in messages:
            if messageName in IGNORE_MESSAGES:
                continue

            message = get_entity(messageName)
            shortName = get_event_canonical_name(messageName)
            ret += "\n"
            ret += f"### {shortName}"
            ret += "\n"
            ret += print_event(messageName)
            # ret += "<br/>"

        return ret


###### Helper methods below


def print_enum(enumName: str):
    """
    Generates the HTML for a protobuf enum's documentation
    """

    try:
        # Fetch the protobuf enum by name
        entity = get_entity(enumName)

        # Replace newlines in the comments of the enum with spaces
        enum_desc = entity["description"].replace("\n", " ").replace("\r", " ")

        ret = (
            f"<div class='proto-obj-container' data-proto-name='{entity['full_name']}'>"
            f"<div class='proto-obj-name'><a name='{entity['full_name']}' href='/reference/proto#{entity['full_name']}'>{entity['name']}</a></div>"
            f"<div class='proto-obj-description'>{enum_desc}</div>"
        )

        if len(entity["values"]) > 0:
            ret += print_enum_values(enumName)
        else:
            ret += "<i style='display:block; font-size: 0.65rem; margin-top: 0.5rem'>This enum has no values (how?)</i>"

        ret += "</div>"

        return ret
    except Exception as e:
        return f"Cannot print proto message: {e}"


def print_enum_values(enumName: str):
    """
    Generates the HTML for just a protobuf enum's values.
    Does not include the enum name or description.
    """

    # Fetch message
    entity = get_entity(enumName)

    enumShortName = entity["name"]

    fields = "<div class='proto-obj-fields'>"

    # Print each field in order
    for valName in entity["values"]:
        # Get value by name
        value = get_entity(valName)

        # Replace newlines in the value's comments with spaces
        value_desc = value["description"].replace("\n", " ").replace("\r", " ")

        fields += (
            "<div class='proto-field'>"
            f"<div class='proto-field-name'><span class='proto-obj-subtype-context'>{enumShortName}.</span>{value['name']}</div> "
            f"<div class='proto-field-type'> = {value['value']}</div>"
            f"<div class='proto-field-description'>{value_desc}</div>"
            "</div>"
        )

    fields += "</div>"

    return fields


def print_event(messageName: str, context: str = None):
    """
    Generates the HTML for a protobuf event's documentation
    """

    try:
        # Fetch the protobuf message by name
        entity = get_entity(messageName)

        # Replace newlines in the comments of the message with spaces
        message_desc = entity["description"].replace("\n", " ").replace("\r", " ")
        event_name = get_event_canonical_name(messageName)

        ret = (
            f"<div class='proto-obj-container'data-proto-name='{entity['full_name']}'>"
            f"<div class='proto-obj-name'><a name='{entity['full_name']}' href='/reference/proto#{entity['full_name']}'>{entity['name']}</a></div>"
            f"<div class='proto-obj-description'>"
            f"Event name: <code>{event_name}</code><br/>"
            f"{message_desc}"
            "</div>"
        )

        if len(entity["fields"]) > 0:
            ret += print_message_fields(messageName, context)
        else:
            ret += "<i style='display:block; font-size: 0.65rem; margin-top: 0.5rem'>This message has no fields</i>"

        ret += "</div>"

        return ret
    except Exception as e:
        return f"Cannot print proto message: {e}"


def print_message(messageName: str, context: str = None):
    """
    Generates the HTML for a protobuf message's documentation
    """

    try:
        # Fetch the protobuf message by name
        entity = get_entity(messageName)

        # Replace newlines in the comments of the message with spaces
        message_desc = entity["description"].replace("\n", " ").replace("\r", " ")

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

    # Determine if field is a `map<x,y>` type
    is_map = field_is_map(field)

    is_array = field["label"] == "LABEL_REPEATED"

    field_type = field["type"]
    field_full_type = field["full_type"]

    # Handle map types specially
    if is_map:
        (key_type, value_type) = get_map_key_value_types(field["full_type"])
        value_ent = try_get_entity(value_type)
        value_is_prim = value_ent is None

        value_type_name = value_type
        if not value_is_prim:
            value_msg = get_entity(value_type)
            value_short_type = value_msg["name"]
            value_type_name = (
                f"<a href='/reference/proto#{value_type}'>{value_short_type}</a>"
            )

        field_type = f"map({key_type} -> {value_type_name})"

        # Set field_full_type to value_type so that when we expand the child type later,
        # the *value* type of the MapEntry is expanded, instead of expanding the MapEntry itself
        field_full_type = value_type

        # If the value is a primitive type, set is_prim to true so that we don't
        # try to expand a sub-type later that's primitive
        is_prim = value_is_prim
    else:
        # Generate a link for a non-primitive type
        if not is_prim:
            field_type = (
                f"<a href='/reference/proto#{field['full_type']}'>{field['type']}</a>"
            )

        # Add array indicator
        if is_array:
            field_type += "[]"

    # If the "optional" option is set, display that
    # TODO: Better presentation of optional designation
    if "options" in field and "services.options.optional" in field["options"]:
        field_type = "optional " + field_type

    field_short_name = field["name"]

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
        field_type_index = get_index_entry(field_full_type)

        sub_content = None
        sub_content_msg = ""

        # If `full_type` points to a Message, document it as a message
        if field_type_index["type"] == "message":
            # Add the current field name to `context`
            if context is None:
                context = field["name"]
            else:
                context += f".{field['name']}"

            if is_map:
                context += "[<span class='proto-context-array-key'>key</span>]"
            elif is_array:
                context += "[<span class='proto-context-array-key'>i</span>]"

            # Embed just the sub-type's fields, not its name or description
            sub_content = print_message_fields(field_full_type, context)
            sub_content_msg = "Show child attributes"
        elif field_type_index["type"] == "enum":
            sub_content = print_enum_values(field_full_type)
            sub_content_msg = "Show enum values"

        if sub_content is not None:
            ret += (
                f"<div class='proto-field-expand-btn' data-sub-type='{field_type_index['type']}' onclick='expandSubField(this);'>{sub_content_msg}</div>"
                f"<div class='proto-field-sub-child hidden'>{sub_content}</div>"
            )

    ret += "</div>"
    return ret


def get_event_canonical_name(messageName):
    """
    Returns the canonical name for an event's protobuf message

    EG, the `TemplateCreated` event has a canonical name of `TEMPLATE_CREATED`
    """

    message = get_entity(messageName)
    if (
        message["options"] is None
        or "trinsic.services.event.event_type" not in message["options"]
    ):
        return None

    option_val = message["options"]["trinsic.services.event.event_type"]

    enum_type = option_val["enum_type"]
    enum_val_int = option_val["enum_value"]

    enum_val = get_enumval_by_value(enum_type, enum_val_int)
    enum_val_name = enum_val["name"]

    return enum_val_name.lower()


def field_is_primitive(field):
    """
    Determines if a field's protobuf type is primitive (string/bool/etc.) or not (AccountDetails/etc.)

    The logic here is that generated types, if primitive, will just be EG "string"/string",
    whereas a Message might be "AccountDetails"/"services.account.v1.AccountDetails"
    """
    return field["type"] == field["full_type"]


def field_is_map(field):
    """
    Determines if a field's type is a `map<x, y>` type.
    """

    if field_is_primitive(field):
        return False

    msg = get_entity(field["full_type"])
    return message_is_map_entry(msg)


def message_is_map_entry(msg):
    """
    Determines if a message is a MapEntry type
    """
    return "is_map_entry" in msg and msg["is_map_entry"]


def get_map_key_value_types(message_full_type):
    """
    Returns a (key_type, value_type) tuple for a MapEntry's key/value field types
    """
    msg = get_entity(message_full_type)

    if not message_is_map_entry(msg):
        return None

    # Find the Key and Value fields
    key_type = None
    value_type = None

    for field in msg["fields"]:
        field_obj = get_entity(field)

        if field_obj["name"] == "key":
            key_type = field_obj["full_type"]
        elif field_obj["name"] == "value":
            value_type = field_obj["full_type"]

    return key_type, value_type


def get_enumval_by_value(enum_name: str, entry_val: int):
    """
    Returns the definition of an enumvalue from its integer value
    """

    enum = get_entity(enum_name)

    if enum is None:
        return None

    for valueName in enum["values"]:
        enumVal = get_entity(valueName)
        if enumVal is None:
            continue

        if enumVal["value"] == entry_val:
            return enumVal

    return None


def get_index_entry(name: str):
    """
    Fetch a proto.json index entry by its Fully Qualified Name
    """

    proto_json = get_proto_json()
    index = proto_json["index"]

    if name not in index:
        raise Exception(f"Cannot find protobuf object with name {name}")

    return index[name]


def try_get_entity(name: str):
    """
    Tries to fetch a protobuf entity by name, returning None on failure
    """
    try:
        return get_entity(name)
    except:
        return None


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
