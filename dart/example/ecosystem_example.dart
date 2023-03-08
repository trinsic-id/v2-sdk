import 'package:trinsic_dart/src/proto/services/provider/v1/provider.pbgrpc.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';
import 'package:trinsic_dart/trinsic.dart';

Future runEcosystemDemo() async {
  var trinsic = TrinsicService(trinsicConfig(), null);
  var account = await trinsic.account().loginAnonymous(ecosystemId: "default");
  assert(account.isNotEmpty);
  // createEcosystem() {
  var actualCreate = await trinsic.provider().createEcosystem(
      request: CreateEcosystemRequest(
          description: "My ecosystem", uri: "https://example.com"));
  // }

  assert(actualCreate.ecosystem.id != "");
  assert(actualCreate.ecosystem.id.startsWith("urn:trinsic:ecosystems:"));
  print("ecosystem id=${actualCreate.ecosystem.id}");

  // listEcosystems() {
  // }

  // inviteParticipant() {
  // }

  // invitationStatus() {
  // }
}

void main() async {
  await runEcosystemDemo();
}
