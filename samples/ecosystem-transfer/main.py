import asyncio

from grpclib import GRPCError
from trinsic.proto.services.verifiablecredentials.templates.v1 import ListCredentialTemplatesRequest, \
    CreateCredentialTemplateRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy

FROM_AUTH_TOKEN = "TODO - Insert your source ecosystem api token here - base64 encoded"
TO_AUTH_TOKEN = "TODO - Insert your destination ecosystem api token here - base64 encoded"


async def copy_credential_templates():
    from_trinsic = TrinsicService(server_config=trinsic_config(FROM_AUTH_TOKEN))
    to_trinsic = TrinsicService(server_config=trinsic_config(TO_AUTH_TOKEN))

    template_id_mapping = dict()

    continuation_token = ""
    query = "SELECT * FROM _"
    while True:
        list_response = await from_trinsic.template.list(
            request=ListCredentialTemplatesRequest(query=query, continuation_token=continuation_token))
        continuation_token = list_response.continuation_token
        print(f"Found {len(list_response.templates)} templates")
        for src_template in list_response.templates:
            # TODO - Logging
            print(f"Attempting to copy {src_template.name}({src_template.id})")
            try:
                create_response = await to_trinsic.template.create(request=CreateCredentialTemplateRequest(
                    name=src_template.name,
                    allow_additional_fields=src_template.allow_additional_fields,
                    fields=src_template.fields
                ))
                # Update the mapping
                template_id_mapping[src_template.id] = create_response.data.id
            except GRPCError as grpc_err:
                # TODO - Logging
                if "name already exists" in grpc_err.message:
                    print(f"Template Name `{src_template.name}` already exists - skipped")
                else:
                    print("Error on template creation", grpc_err)
                # TODO - Ignore only "template name exists"
                pass
        # Do this at the end of the loop in case there were entries in the last loop
        if not list_response.has_more_results:
            print("No (more) templates found")
            break

    # Return an id mapping table
    print("Mapping id table", template_id_mapping)


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    # TODO - Command line arguments?
    set_eventloop_policy()
    asyncio.run(copy_credential_templates())

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
