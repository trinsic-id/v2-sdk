//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AcceptanceApi {
  AcceptanceApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new `VerificationSession` for the given integration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateVerificationSessionRequest] createVerificationSessionRequest:
  Future<Response> createVerificationSessionWithHttpInfo({
    CreateVerificationSessionRequest? createVerificationSessionRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/acceptance/verification-session';

    // ignore: prefer_final_locals
    Object? postBody = createVerificationSessionRequest;

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new `VerificationSession` for the given integration.
  ///
  /// Parameters:
  ///
  /// * [CreateVerificationSessionRequest] createVerificationSessionRequest:
  Future<CreateVerificationSessionResponse?> createVerificationSession({
    CreateVerificationSessionRequest? createVerificationSessionRequest,
  }) async {
    final response = await createVerificationSessionWithHttpInfo(
      createVerificationSessionRequest: createVerificationSessionRequest,
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
        'CreateVerificationSessionResponse',
      ) as CreateVerificationSessionResponse;
    }
    return null;
  }

  /// Exchange a token for the results of a `VerificationSession`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] verificationSessionId (required):
  ///
  /// * [ExchangeTokenRequest] exchangeTokenRequest:
  Future<Response> exchangeTokenWithHttpInfo(
    String verificationSessionId, {
    ExchangeTokenRequest? exchangeTokenRequest,
  }) async {
    // ignore: prefer_const_declarations
    final path =
        r'/api/v1/acceptance/verification-session/{verificationSessionId}/exchange'
            .replaceAll('{verificationSessionId}', verificationSessionId);

    // ignore: prefer_final_locals
    Object? postBody = exchangeTokenRequest;

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

  /// Exchange a token for the results of a `VerificationSession`
  ///
  /// Parameters:
  ///
  /// * [String] verificationSessionId (required):
  ///
  /// * [ExchangeTokenRequest] exchangeTokenRequest:
  Future<ExchangeTokenResponse?> exchangeToken(
    String verificationSessionId, {
    ExchangeTokenRequest? exchangeTokenRequest,
  }) async {
    final response = await exchangeTokenWithHttpInfo(
      verificationSessionId,
      exchangeTokenRequest: exchangeTokenRequest,
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
        'ExchangeTokenResponse',
      ) as ExchangeTokenResponse;
    }
    return null;
  }

  /// Exchange a Resource Access Token (from `IdentityData.LinkedResources`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] resourceToken:
  Future<Response> getLinkedResourceWithHttpInfo({
    String? resourceToken,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/acceptance/resource';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (resourceToken != null) {
      queryParams.addAll(_queryParams('', 'resourceToken', resourceToken));
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

  /// Exchange a Resource Access Token (from `IdentityData.LinkedResources`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
  ///
  /// Parameters:
  ///
  /// * [String] resourceToken:
  Future<void> getLinkedResource({
    String? resourceToken,
  }) async {
    final response = await getLinkedResourceWithHttpInfo(
      resourceToken: resourceToken,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List all integrations available for use
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listIntegrationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/acceptance/integrations';

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

  /// List all integrations available for use
  Future<ListIntegrationsResponse?> listIntegrations() async {
    final response = await listIntegrationsWithHttpInfo();
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
        'ListIntegrationsResponse',
      ) as ListIntegrationsResponse;
    }
    return null;
  }
}
