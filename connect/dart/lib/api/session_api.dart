//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SessionApi {
  SessionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/sessions/cancel' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [String] sessionId:
  Future<Response> cancelSessionWithHttpInfo(String trinsicAuthorization, { String? sessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessions/cancel';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }

    headerParams[r'TrinsicAuthorization'] = parameterToString(trinsicAuthorization);

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [String] sessionId:
  Future<CancelSessionResponse?> cancelSession(String trinsicAuthorization, { String? sessionId, }) async {
    final response = await cancelSessionWithHttpInfo(trinsicAuthorization,  sessionId: sessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CancelSessionResponse',) as CancelSessionResponse;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/sessions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [CreateSessionRequest] createSessionRequest:
  Future<Response> createSessionWithHttpInfo(String trinsicAuthorization, { CreateSessionRequest? createSessionRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessions';

    // ignore: prefer_final_locals
    Object? postBody = createSessionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'TrinsicAuthorization'] = parameterToString(trinsicAuthorization);

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [CreateSessionRequest] createSessionRequest:
  Future<CreateSessionResponse?> createSession(String trinsicAuthorization, { CreateSessionRequest? createSessionRequest, }) async {
    final response = await createSessionWithHttpInfo(trinsicAuthorization,  createSessionRequest: createSessionRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateSessionResponse',) as CreateSessionResponse;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/sessions/get' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [String] sessionId:
  Future<Response> getSessionWithHttpInfo(String trinsicAuthorization, { String? sessionId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessions/get';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sessionId != null) {
      queryParams.addAll(_queryParams('', 'sessionId', sessionId));
    }

    headerParams[r'TrinsicAuthorization'] = parameterToString(trinsicAuthorization);

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [String] sessionId:
  Future<GetSessionResponseV1?> getSession(String trinsicAuthorization, { String? sessionId, }) async {
    final response = await getSessionWithHttpInfo(trinsicAuthorization,  sessionId: sessionId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSessionResponseV1',) as GetSessionResponseV1;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/sessions/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [ListSessionsRequest] listSessionsRequest:
  Future<Response> listSessionsWithHttpInfo(String trinsicAuthorization, { ListSessionsRequest? listSessionsRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sessions/list';

    // ignore: prefer_final_locals
    Object? postBody = listSessionsRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'TrinsicAuthorization'] = parameterToString(trinsicAuthorization);

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] trinsicAuthorization (required):
  ///   Bearer token. Can be left empty on anonymous endpoints
  ///
  /// * [ListSessionsRequest] listSessionsRequest:
  Future<ListSessionsResponseV1?> listSessions(String trinsicAuthorization, { ListSessionsRequest? listSessionsRequest, }) async {
    final response = await listSessionsWithHttpInfo(trinsicAuthorization,  listSessionsRequest: listSessionsRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListSessionsResponseV1',) as ListSessionsResponseV1;
    
    }
    return null;
  }
}
