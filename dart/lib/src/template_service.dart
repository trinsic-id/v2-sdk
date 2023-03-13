import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/templates/v1/templates.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';
import 'package:trinsic_dart/src/storage/token_provider.dart';

class TemplateService extends ServiceBase {
  late CredentialTemplatesClient client;

  TemplateService(ServiceOptions? serverOptions, ITokenProvider? tokenProvider)
      : super(serverOptions, tokenProvider) {
    client = CredentialTemplatesClient(super.channel);
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/dart/lib/src/template_service.dart

  Future<CreateCredentialTemplateResponse> create(
      CreateCredentialTemplateRequest request) async {
    ///  Create a credential template in the current ecosystem

    return client.create(request,
        options: await buildMetadata(request: request));
  }

  Future<GetCredentialTemplateResponse> get(
      GetCredentialTemplateRequest request) async {
    ///  Fetch a credential template by ID

    return client.get(request, options: await buildMetadata(request: request));
  }

  Future<UpdateCredentialTemplateResponse> update(
      UpdateCredentialTemplateRequest request) async {
    ///  Update metadata of a template

    return client.update(request,
        options: await buildMetadata(request: request));
  }

  Future<ListCredentialTemplatesResponse> list(
      ListCredentialTemplatesRequest request) async {
    ///  Search credential templates using SQL, returning strongly-typed template data

    return client.list(request, options: await buildMetadata(request: request));
  }

  Future<SearchCredentialTemplatesResponse> search(
      SearchCredentialTemplatesRequest request) async {
    ///  Search credential templates using SQL, returning raw JSON data

    return client.search(request,
        options: await buildMetadata(request: request));
  }

  Future<DeleteCredentialTemplateResponse> delete(
      DeleteCredentialTemplateRequest request) async {
    ///  Delete a credential template from the current ecosystem by ID

    return client.delete(request,
        options: await buildMetadata(request: request));
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
