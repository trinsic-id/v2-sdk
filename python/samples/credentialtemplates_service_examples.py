import json
import uuid
import asyncio
from trinsic.trinsic_util import set_eventloop_policy
from trinsic.proto.services.verifiablecredentials.templates.v1 import (
    CreateCredentialTemplateResponse,
    CreateCredentialTemplateRequest, TemplateField, FieldType, GetCredentialTemplateRequest,
    UpdateCredentialTemplateRequest, ListCredentialTemplatesRequest, DeleteCredentialTemplateRequest,
    SearchCredentialTemplatesRequest
)
from trinsic.template_service import TemplateService
# createCredentialTemplatesService() {
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

trinsic = TrinsicService(server_config=trinsic_config(auth_token="[YOURAUTHTOKEN]"))
template_service = trinsic.template
# }

async def create_template(template_service: TemplateService) -> CreateCredentialTemplateResponse:
    # CredentialTemplatesServiceCreate() {
    template = await template_service.create(
        request=CreateCredentialTemplateRequest(
            name=f"An Example Credential {uuid.uuid4()}",
            allow_additional_fields=False,
            fields={
                "firstName": TemplateField(description="Given name"),
                "lastName": TemplateField(),
                "age": TemplateField(optional=True, type=FieldType.NUMBER),
            },
        )
    )
    # }
    assert template is not None
    assert template.data is not None
    assert template.data.id is not None
    assert template.data.schema_uri is not None

    return template


async def credential_templates_service_examples():
    profile = await trinsic.account.login_anonymous(ecosystem_id="default")
    template = await create_template(template_service)

    # CredentialTemplatesServiceGet() {
    get_template = await template_service.get(
        request=GetCredentialTemplateRequest(id=template.data.id))
    # }
    # Ensure it's the same template
    assert get_template.template.id == template.data.id
    assert get_template.template.name == template.data.name
    assert get_template.template.ecosystem_id == template.data.ecosystem_id

    # CredentialTemplatesServiceUpdate() {
    update_response = await template_service.update(request=UpdateCredentialTemplateRequest(
        title="My New Title",
        description="My template description"
    ))
    assert update_response.updated_template.title == "My New Title"
    assert update_response.updated_template.description == "My template description"
    # }

    # CredentialTemplatesServiceList() {
    templates_list = await template_service.list(request=ListCredentialTemplatesRequest(
        query=f"SELECT * FROM c WHERE c.id = '{template.data.id}'"
    ))
    assert len(templates_list.templates) >= 1
    # }

    # CredentialTemplatesServiceSearch() {
    search_templates = await template_service.search(request=SearchCredentialTemplatesRequest(
        query=f"SELECT c.name FROM c WHERE c.id = '{template.data.id}'"
    ))
    # Parse the json
    template_names = json.loads(search_templates.items_json)
    # TODO - Verify this!
    assert len(template_names) >= 1
    # }

    # CredentialTemplatesServiceDelete() {
    delete_response = await template_service.delete(request=DeleteCredentialTemplateRequest(
        id=template.data.id
    ))
    # }


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(credential_templates_service_examples())
