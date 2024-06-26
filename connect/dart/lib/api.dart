//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/sessions_api.dart';

part 'model/cancel_session_response.dart';
part 'model/create_session_request.dart';
part 'model/create_session_response.dart';
part 'model/debug_idv_provider_selection.dart';
part 'model/failure_message.dart';
part 'model/get_session_response_v1.dart';
part 'model/government_id_options.dart';
part 'model/idv_session_state.dart';
part 'model/list_sessions_request.dart';
part 'model/list_sessions_response.dart';
part 'model/normalized_identity_data.dart';
part 'model/order_direction.dart';
part 'model/requested_verification.dart';
part 'model/session.dart';
part 'model/session_fail_code.dart';
part 'model/session_ordering.dart';
part 'model/validation_result.dart';
part 'model/verification.dart';
part 'model/verification_fail_code.dart';
part 'model/verification_state.dart';
part 'model/verification_type.dart';

/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) =>
    pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
