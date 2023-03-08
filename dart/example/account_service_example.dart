import 'package:trinsic_dart/src/trinsic_service.dart';
import 'package:trinsic_dart/src/trinsic_util.dart';

var trinsic = TrinsicService(trinsicConfig(authToken: "[YOURAUTHTOKEN]"), null);
var accountService = trinsic.account();
