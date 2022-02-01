import asyncio
import json
from typing import Dict, Any

from trinsic.proto.services.verifiablecredentials.templates.v1 import TemplateField, \
    FieldType
from trinsic.services import AccountService, CredentialsService, CredentialTemplatesService
from trinsic.trinsic_util import trinsic_test_config


async def templates_demo():
    account_service = AccountService(server_config=trinsic_test_config())
    profile = await account_service.sign_in()
    template_service = CredentialTemplatesService(profile, server_config=trinsic_test_config())
    credential_service = CredentialsService(profile, server_config=trinsic_test_config())

    # create example template
    template = await template_service.create(name="My Example Credential", allow_additional_fields=False, fields={'firstName': TemplateField(description="Given name"),
                                                                                                                  'lastName': TemplateField(),
                                                                                                                  'age': TemplateField(type=FieldType.NUMBER, optional=True)})
    assert template is not None
    assert template.data is not None
    assert template.data.id is not None
    assert template.data.schema_uri is not None

    # issue credential from this template
    values = json.dumps({'firstName': 'Jane', 'lastName': 'Doe', 'age': 42})
    credential_json = await credential_service.issue_from_template(template_id=template.data.id, values_json=values)
    assert credential_json is not None

    json_document: Dict[str, Any] = json.loads(credential_json)
    json_keys = list(json_document.keys())
    assert 'id' in json_keys
    assert 'credentialSubject' in json_keys

    account_service.close()
    template_service.close()
    credential_service.close()


if __name__ == "__main__":
    asyncio.run(templates_demo())
