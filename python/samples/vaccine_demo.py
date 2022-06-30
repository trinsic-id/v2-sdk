import asyncio
import json

from trinsic.proto.services.universalwallet.v1 import InsertItemRequest
from trinsic.proto.services.verifiablecredentials.templates.v1 import (
    CreateCredentialTemplateRequest,
    TemplateData,
    TemplateField,
    FieldType,
)
from trinsic.proto.services.verifiablecredentials.v1 import (
    IssueFromTemplateRequest,
    CreateProofRequest,
    VerifyProofRequest,
    SendRequest,
)
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config, set_eventloop_policy


async def vaccine_demo():
    # trinsicServiceConstructor() {
    trinsic_service = TrinsicService(server_config=trinsic_config())
    # }

    # createEcosystem() {
    ecosystem = await trinsic_service.provider.create_ecosystem()
    ecosystem_id = ecosystem.ecosystem.id
    # }

    # Set service default ecosystem
    trinsic_service.service_options.default_ecosystem = ecosystem_id

    # setupActors() {
    # Create an account for each participant in the scenario
    allison = await trinsic_service.account.sign_in()
    airline = await trinsic_service.account.sign_in()
    clinic = await trinsic_service.account.sign_in()
    # }

    trinsic_service.service_options.auth_token = clinic
    info = await trinsic_service.account.get_info()
    print(f"Account info={info}")

    # Create a template
    trinsic_service.service_options.auth_token = clinic
    template = await do_template(trinsic_service)

    # Create template values

    # issueCredential() {
    # Prepare values for credential
    values = json.dumps(
        {
            "firstName": "Allison",
            "lastName": "Allisonne",
            "batchNumber": "123454321",
            "countryOfVaccination": "US",
        }
    )

    # Issue credential
    issue_response = await trinsic_service.credential.issue_from_template(
        request=IssueFromTemplateRequest(template_id=template.id, values_json=values)
    )

    credential = issue_response.document_json
    # }

    print(f"Credential: {credential}")

    try:
        # sendCredential() {
        send_response = await trinsic_service.credential.send(
            request=SendRequest(document_json=credential, email="example@trinsic.id")
        )
        # }
    except:
        pass

    # storeCredential() {
    # Allison stores the credential in her cloud wallet
    trinsic_service.service_options.auth_token = allison

    insert_response = await trinsic_service.wallet.insert_item(
        request=InsertItemRequest(item_json=credential)
    )

    item_id = insert_response.item_id
    # }
    print(f"item id = {item_id}")

    # shareCredential() {
    # Allison shares the credential with the airline
    trinsic_service.service_options.auth_token = allison

    proof_response = await trinsic_service.credential.create_proof(
        request=CreateProofRequest(item_id=item_id)
    )

    credential_proof = proof_response.proof_document_json
    # }

    print(f"Proof: {credential_proof}")

    # verifyCredential() {
    # The airline verifies the credential
    trinsic_service.service_options.auth_token = airline

    verify_result = await trinsic_service.credential.verify_proof(
        request=VerifyProofRequest(proof_document_json=credential_proof)
    )

    valid = verify_result.is_valid
    # }

    print(f"Verification result: {valid}")
    assert valid is True

    # revokeCredential() {
    # update_status_response = await trinsic_service.credential.update_status(credential_status_id=status_id, revoked=True)
    # print(f"UpdateStatusResponse: {update_status_response}")
    # credential_status = await trinsic_service.credential.check_status(credential_status_id=status_id)
    # print(f"Credential_status: {credential_status}")
    # assert credential_status.revoked is True
    # }


async def do_template(trinsic_service: TrinsicService) -> TemplateData:
    # createTemplate() {
    template = await trinsic_service.template.create(
        request=CreateCredentialTemplateRequest(
            name="VaccinationCertificate",
            allow_additional_fields=False,
            fields={
                "firstName": TemplateField(
                    description="First name of vaccine recipient"
                ),
                "lastName": TemplateField(description="Last name of vaccine recipient"),
                "batchNumber": TemplateField(
                    description="Batch number of vaccine", type=FieldType.STRING
                ),
                "countryOfVaccination": TemplateField(
                    description="Country in which the subject was vaccinated"
                ),
            },
        )
    )

    template_id = template.data.id
    # }

    assert template_id is not None
    assert template.data.schema_uri is not None

    return template.data


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(vaccine_demo())
