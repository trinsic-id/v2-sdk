import asyncio
import json

from trinsic.account_service import AccountService
from trinsic.credential_service import CredentialService
from trinsic.template_service import TemplateService
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
from trinsic.provider_service import ProviderService
from trinsic.trinsic_util import trinsic_config
from trinsic.wallet_service import WalletService


async def vaccine_demo():
    config = trinsic_config()

    account_service = AccountService(server_config=config)
    provider_service = ProviderService(server_config=config)

    # createEcosystem() {
    ecosystem = await provider_service.create_ecosystem()
    ecosystem_id = ecosystem.ecosystem.id
    # }

    # Set service default ecosystem
    provider_service.service_options.default_ecosystem = (
        account_service.service_options.default_ecosystem
    ) = ecosystem_id
    config.default_ecosystem = ecosystem_id

    wallet_service = WalletService(server_config=config)
    credential_service = CredentialService(server_config=config)
    template_service = TemplateService(server_config=config)

    # setupActors() {
    # Create an account for each participant in the scenario
    allison = await account_service.sign_in()
    airline = await account_service.sign_in()
    clinic = await account_service.sign_in()
    # }

    account_service.service_options.auth_token = clinic
    info = await account_service.get_info()
    print(f"Account info={info}")

    # Create a template
    template_service.service_options.auth_token = clinic
    template = await do_template(template_service)

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
    issue_response = await credential_service.issue_from_template(
        request=IssueFromTemplateRequest(template_id=template.id, values_json=values)
    )

    credential = issue_response.document_json
    # }

    print(f"Credential: {credential}")

    try:
        # sendCredential() {
        send_response = await credential_service.send(
            request=SendRequest(document_json=credential, email="example@trinsic.id")
        )
        # }
    except:
        pass

    # storeCredential() {
    # Allison stores the credential in her cloud wallet
    wallet_service.service_options.auth_token = allison

    insert_response = await wallet_service.insert_item(
        request=InsertItemRequest(item_json=credential)
    )

    item_id = insert_response.item_id
    # }
    print(f"item id = {item_id}")

    # shareCredential() {
    # Allison shares the credential with the airline
    credential_service.service_options.auth_token = allison

    proof_response = await credential_service.create_proof(
        request=CreateProofRequest(item_id=item_id)
    )

    credential_proof = proof_response.proof_document_json
    # }

    print(f"Proof: {credential_proof}")

    # verifyCredential() {
    # The airline verifies the credential
    credential_service.service_options.auth_token = airline

    verify_result = await credential_service.verify_proof(
        request=VerifyProofRequest(proof_document_json=credential_proof)
    )

    valid = verify_result.is_valid
    # }

    print(f"Verification result: {valid}")
    assert valid is True

    # revokeCredential() {
    # update_status_response = await credential_service.update_status(credential_status_id=status_id, revoked=True)
    # print(f"UpdateStatusResponse: {update_status_response}")
    # credential_status = await credential_service.check_status(credential_status_id=status_id)
    # print(f"Credential_status: {credential_status}")
    # assert credential_status.revoked is True
    # }
    credential_service.close()
    wallet_service.close()
    account_service.close()
    provider_service.close()


async def do_template(template_service: TemplateService) -> TemplateData:
    # createTemplate() {
    template = await template_service.create(
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
    asyncio.run(vaccine_demo())
