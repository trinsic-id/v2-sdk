//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentsApi {
  AttachmentsApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentAccessKey:
  Future<Response> getAttachmentWithHttpInfo({
    String? attachmentAccessKey,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/attachments/fetch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (attachmentAccessKey != null) {
      queryParams
          .addAll(_queryParams('', 'attachmentAccessKey', attachmentAccessKey));
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

  /// Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentAccessKey:
  Future<void> getAttachment({
    String? attachmentAccessKey,
  }) async {
    final response = await getAttachmentWithHttpInfo(
      attachmentAccessKey: attachmentAccessKey,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
