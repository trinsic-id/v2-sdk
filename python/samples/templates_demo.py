import asyncio
import json
import random

from trinsic.proto.services.verifiablecredentials.templates.v1 import (
    TemplateField,
    FieldType,
    CreateCredentialTemplateRequest,
    GetCredentialTemplateRequest,
    DeleteCredentialTemplateRequest,
    SearchCredentialTemplatesRequest,
    FieldOrdering,
    AppleWalletOptions,
    UpdateCredentialTemplateRequest,
    TemplateFieldPatch,
)
from trinsic.proto.services.verifiablecredentials.v1 import (
    IssueFromTemplateRequest,
)
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def templates_demo():
    trinsic_service = TrinsicService(server_config=trinsic_config())
    ecosystem = await trinsic_service.provider.create_ecosystem()

    print("Ecosystem Token", trinsic_service.service_options.auth_token)

    # create example template
    # createTemplate() {
    create_request = CreateCredentialTemplateRequest(
        name=f"An Example Credential-{random.Random().randint(0,100)}",
        title="Example Credential",
        description="A credential for Trinsic's SDK samples",
        allow_additional_fields=False,
        fields={
            "firstName": TemplateField(
                title="First Name", description="Given name of holder"
            ),
            "lastName": TemplateField(
                title="Last Name", description="Surname of holder", optional=True
            ),
            "age": TemplateField(
                title="Age", description="Age in years of holder", type=FieldType.NUMBER
            ),
        },
        field_ordering={
            "firstName": FieldOrdering(order=0, section="Name"),
            "lastName": FieldOrdering(order=1, section="Name"),
            "age": FieldOrdering(order=2, section="Miscellaneous"),
        },
        apple_wallet_options=AppleWalletOptions(
            primary_field="firstName",
            secondary_fields=["lastName"],
            auxiliary_fields=["age"],
        ),
    )
    create_response = await trinsic_service.template.create(request=create_request)
    # }
    template = create_response
    assert template is not None
    assert template.data is not None
    assert template.data.id is not None
    assert template.data.schema_uri is not None

    template_id = template.data.id

    # update template
    # updateTemplate() {
    update_request = UpdateCredentialTemplateRequest(
        id=template_id,
        title="New Title",
        description="New Description",
        fields={
            "firstName": TemplateFieldPatch(title="New title for firstName"),
            "lastName": TemplateFieldPatch(description="New description for lastName"),
        },
        field_ordering={
            "age": FieldOrdering(order=0, section="Misc"),
            "firstName": FieldOrdering(order=1, section="Full Name"),
            "lastName": FieldOrdering(order=2, section="Full Name"),
        },
        apple_wallet_options=AppleWalletOptions(
            primary_field="age", secondary_fields=["firstName", "lastName"]
        ),
    )
    update_response = await trinsic_service.template.update(request=update_request)
    # }

    # issue credential from this template
    # issueFromTemplate() {
    values = json.dumps({"firstName": "Jane", "lastName": "Doe", "age": "42"})
    issue_response = await trinsic_service.credential.issue_from_template(
        request=IssueFromTemplateRequest(
            template_id=template.data.id, values_json=values
        )
    )
    # }
    json_document = json.loads(issue_response.document_json)
    assert json_document is not None

    json_keys = list(json_document.keys())
    assert "id" in json_keys
    assert "credentialSubject" in json_keys

    # TODO - Fix this, it's not part of the other tests
    # insert_response = await trinsic_service.wallet.insert_item(
    #     request=InsertItemRequest(item_json=json.dumps(json_document))
    # )
    # item_id = insert_response.item_id
    # frame = {
    #     "@context": "https://www.w3.org/2018/credentials/v1",
    #     "type": ["VerifiableCredential"],
    # }
    #
    # # create proof from input document
    # proof = await trinsic_service.credential.create_proof(
    #     request=CreateProofRequest(
    #         document_json=issue_response.document_json,
    #         reveal_document_json=json.dumps(frame),
    #     )
    # )
    # verify_result = await trinsic_service.credential.verify_proof(
    #     request=VerifyProofRequest(proof_document_json=proof.proof_document_json)
    # )
    # assert verify_result.is_valid
    #
    # # create proof from item id
    # proof = await trinsic_service.credential.create_proof(
    #     request=CreateProofRequest(
    #         item_id=item_id, reveal_document_json=json.dumps(frame)
    #     )
    # )
    # verify_result = await trinsic_service.credential.verify_proof(
    #     request=VerifyProofRequest(proof_document_json=proof.proof_document_json)
    # )
    # assert verify_result.is_valid
    #
    # try:
    #     # checkCredentialStatus() {
    #     check_response = await trinsic_service.credential.check_status(
    #         request=CheckStatusRequest(credential_status_id="")
    #     )
    #     # }
    # except:
    #     pass  # This is expected
    #
    # try:
    #     # updateCredentialStatus() {
    #     update_response = await trinsic_service.credential.update_status(
    #         request=UpdateStatusRequest(credential_status_id="", revoked=True)
    #     )
    #     # }
    # except:
    #     pass  # This is expected

    # getCredentialTemplate() {
    get_template_response = await trinsic_service.template.get(
        request=GetCredentialTemplateRequest(id=template.data.id)
    )
    # }
    # searchCredentialTemplate() {
    search_template_response = await trinsic_service.template.search(
        request=SearchCredentialTemplatesRequest(query="SELECT * FROM c")
    )
    # }
    # try:
    #     # deleteCredentialTemplate() {
    #     delete_template_response = await trinsic_service.template.delete(
    #         request=DeleteCredentialTemplateRequest(id=template.data.id)
    #     )
    #     # }
    # except:
    #     # permission denied on deletion - whatever
    #     pass


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(templates_demo())
