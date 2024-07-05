//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SessionsApi {
  SessionsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/v1/sessions/{sessionId}/cancel' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  Future<Response> cancelSessionWithHttpInfo(
    String sessionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/sessions/{sessionId}/cancel'
        .replaceAll('{sessionId}', sessionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] sessionId (required):
  Future<CancelSessionResponse?> cancelSession(
    String sessionId,
  ) async {
    final response = await cancelSessionWithHttpInfo(
      sessionId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'CancelSessionResponse',
      ) as CancelSessionResponse;
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/sessions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateSessionRequest] createSessionRequest:
  Future<Response> createSessionWithHttpInfo({
    CreateSessionRequest? createSessionRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/sessions';

    // ignore: prefer_final_locals
    Object? postBody = createSessionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[
      'application/json',
      'text/json',
      'application/*+json'
    ];

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
  /// * [CreateSessionRequest] createSessionRequest:
  Future<CreateSessionResponse?> createSession({
    CreateSessionRequest? createSessionRequest,
  }) async {
    final response = await createSessionWithHttpInfo(
      createSessionRequest: createSessionRequest,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'CreateSessionResponse',
      ) as CreateSessionResponse;
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/sessions/{sessionId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  Future<Response> getSessionWithHttpInfo(
    String sessionId,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/api/v1/sessions/{sessionId}'.replaceAll('{sessionId}', sessionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] sessionId (required):
  Future<GetSessionResponseV1?> getSession(
    String sessionId,
  ) async {
    final response = await getSessionWithHttpInfo(
      sessionId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'GetSessionResponseV1',
      ) as GetSessionResponseV1;
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/v1/sessions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SessionOrdering] orderBy:
  ///
  /// * [OrderDirection] orderDirection:
  ///
  /// * [int] pageSize:
  ///
  /// * [int] page:
  Future<Response> listSessionsWithHttpInfo({
    SessionOrdering? orderBy,
    OrderDirection? orderDirection,
    int? pageSize,
    int? page,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/sessions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (orderBy != null) {
      queryParams.addAll(_queryParams('', 'OrderBy', orderBy));
    }
    if (orderDirection != null) {
      queryParams.addAll(_queryParams('', 'OrderDirection', orderDirection));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'PageSize', pageSize));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'Page', page));
    }

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
  /// * [SessionOrdering] orderBy:
  ///
  /// * [OrderDirection] orderDirection:
  ///
  /// * [int] pageSize:
  ///
  /// * [int] page:
  Future<ListSessionsResponse?> listSessions({
    SessionOrdering? orderBy,
    OrderDirection? orderDirection,
    int? pageSize,
    int? page,
  }) async {
    final response = await listSessionsWithHttpInfo(
      orderBy: orderBy,
      orderDirection: orderDirection,
      pageSize: pageSize,
      page: page,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ListSessionsResponse',
      ) as ListSessionsResponse;
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/v1/sessions/{sessionId}/redact' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  Future<Response> redactSessionWithHttpInfo(
    String sessionId,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/sessions/{sessionId}/redact'
        .replaceAll('{sessionId}', sessionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] sessionId (required):
  Future<void> redactSession(
    String sessionId,
  ) async {
    final response = await redactSessionWithHttpInfo(
      sessionId,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
