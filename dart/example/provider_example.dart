import 'package:trinsic_dart/src/proto/services/account/v1/account.pbgrpc.dart';
import 'package:trinsic_dart/src/proto/services/provider/v1/provider.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';

Future runProviderDemo() async {
  var accountService = AccountService(trinsicConfig(), null);
  var account = await accountService.loginAnonymous("default");
  var providerService =
      ProviderService(trinsicConfig(authToken: account), null);

  try {
    var inviteResponse = await providerService.invite(InviteRequest(
        details: AccountDetails(email: "nothing@trinsic.id"),
        participant: ParticipantType.participant_type_individual,
        description: "I dunno"));
    assert(inviteResponse.invitationId != "");
  } catch (e) {}
}

void main() async {
  await runProviderDemo();
}
