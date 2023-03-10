import asyncio

from trinsic.trinsic_util import set_eventloop_policy
# createAccessManagementService() {
from trinsic.proto.services.provider.v1 import AddRoleAssignmentRequest
from trinsic.trinsic_service import TrinsicService
from trinsic.trinsic_util import trinsic_config

trinsic = TrinsicService(server_config=trinsic_config(auth_token="[YOURAUTHTOKEN]"))
access_management = trinsic.access_management
# }


async def access_management_service_examples():
    # TODO - Fill this in
    # AccessManagementServiceAddRoleAssignment() {
    await access_management.add_role_assignment(request=AddRoleAssignmentRequest())
    # }

    # AccessManagementServiceRemoveRoleAssignment() {
    # TODO - Fill this out
    # }

    # AccessManagementServiceListRoleAssignments() {
    # TODO - Fill this out
    # }

    # AccessManagementServiceListAvailableRoles() {
    # TODO - Fill this out
    # }

    trinsic.close()


if __name__ == "__main__":
    set_eventloop_policy()
    asyncio.run(access_management_service_examples())
