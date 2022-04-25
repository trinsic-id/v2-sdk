import asyncio
import json

from trinsic.account_service import AccountService
from trinsic.credentials_service import CredentialsService
from trinsic.credentialtemplates_service import TemplateService
from trinsic.proto.services.universalwallet.v1 import InsertItemRequest
from trinsic.proto.services.verifiablecredentials.templates.v1 import (
    TemplateField,
    FieldType,
    CreateCredentialTemplateRequest,
    GetCredentialTemplateRequest,
    DeleteCredentialTemplateRequest,
    SearchCredentialTemplatesRequest,
)
from trinsic.proto.services.verifiablecredentials.v1 import (
    IssueFromTemplateRequest,
    CreateProofRequest,
    VerifyProofRequest,
    CheckStatusRequest,
    UpdateStatusRequest,
)
from trinsic.trinsic_util import trinsic_config
from trinsic.wallet_service import WalletService


async def templates_demo():
    account_service = AccountService(server_config=trinsic_config())
    profile = await account_service.sign_in()
    template_service = TemplateService(server_config=trinsic_config(profile))
    credential_service = CredentialsService(server_config=trinsic_config(profile))
    wallet_service = WalletService(server_config=trinsic_config(profile))

    # create example template
    # createTemplate() {
    template = await template_service.create(
        request=CreateCredentialTemplateRequest(
            name="An Example Credential",
            allow_additional_fields=False,
            fields={
                "firstName": TemplateField(description="Given name"),
                "lastName": TemplateField(),
                "age": TemplateField(type=FieldType.NUMBER, optional=True),
            },
        )
    )
    # }
    assert template is not None
    assert template.data is not None
    assert template.data.id is not None
    assert template.data.schema_uri is not None

    # issue credential from this template
    # issueFromTemplate() {
    values = json.dumps({"firstName": "Jane", "lastName": "Doe", "age": 42})
    issue_response = await credential_service.issue_from_template(
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

    insert_response = await wallet_service.insert_item(
        request=InsertItemRequest(item_json=json.dumps(json_document))
    )
    item_id = insert_response.item_id
    frame = {
        "@context": "https://www.w3.org/2018/credentials/v1",
        "type": ["VerifiableCredential"],
    }

    # create proof from input document
    proof = await credential_service.create_proof(
        request=CreateProofRequest(
            document_json=issue_response.document_json, reveal_document_json=json.dumps(frame)
        )
    )
    verify_result = await credential_service.verify_proof(
        request=VerifyProofRequest(proof_document_json=proof.proof_document_json)
    )
    assert verify_result.is_valid

    # create proof from item id
    proof = await credential_service.create_proof(
        request=CreateProofRequest(
            item_id=item_id, reveal_document_json=json.dumps(frame)
        )
    )
    verify_result = await credential_service.verify_proof(
        request=VerifyProofRequest(proof_document_json=proof.proof_document_json)
    )
    assert verify_result.is_valid

    try:
        # checkCredentialStatus() {
        check_response = await credential_service.check_status(
            request=CheckStatusRequest(credential_status_id="")
        )
        # }
    except:
        pass  # This is expected

    try:
        # updateCredentialStatus() {
        update_response = await credential_service.update_status(
            request=UpdateStatusRequest(credential_status_id="", revoked=True)
        )
        # }
    except:
        pass  # This is expected

    # getCredentialTemplate() {
    get_template_response = await template_service.get(
        request=GetCredentialTemplateRequest(id=template.data.id)
    )
    # }
    # searchCredentialTemplate() {
    search_template_response = await template_service.search(
        request=SearchCredentialTemplatesRequest(query="SELECT * FROM c")
    )
    # }
    # deleteCredentialTemplate() {
    delete_template_response = await template_service.delete(
        request=DeleteCredentialTemplateRequest(id=template.data.id)
    )
    # }

    account_service.close()
    template_service.close()
    credential_service.close()


if __name__ == "__main__":
    asyncio.run(templates_demo())
