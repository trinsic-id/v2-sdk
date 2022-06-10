import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/verifiable-credentials/templates/v1/templates.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class TemplateService extends ServiceBase {
  late CredentialTemplatesClient client;

  TemplateService(ServiceOptions? serverOptions)
      : super(serverOptions) {
    client = CredentialTemplatesClient(super.channel,
        interceptors: [MetadataInterceptor(this)]);
  }

  Future<CreateCredentialTemplateResponse> create(
      CreateCredentialTemplateRequest request) async {
    return await client.create(request);
  }

  Future<GetCredentialTemplateResponse> get(
      GetCredentialTemplateRequest request) async {
    return await client.get(request);
  }

  Future<ListCredentialTemplatesResponse> list(
      ListCredentialTemplatesRequest request) async {
    return await client.list(request);
  }

  Future<SearchCredentialTemplatesResponse> search(
      SearchCredentialTemplatesRequest request) async {
    return await client.search(request);
  }

  Future<DeleteCredentialTemplateResponse> delete(
      DeleteCredentialTemplateRequest request) async {
    return await client.delete(request);
  }
}
