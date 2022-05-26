import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/universal-wallet/v1/universal-wallet.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';

class WalletService extends ServiceBase {
  late UniversalWalletClient client;

  WalletService(ServiceOptions? serverOptions) : super(serverOptions) {
    client = UniversalWalletClient(super.channel,
        interceptors: [MetadataInterceptor(this)]);
  }

  Future<SearchResponse> search(SearchRequest request) async {
    if (request.query == "") {
      request.query = "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100";
    }
    return await client.search(request);
  }

  Future<InsertItemResponse> insertItem(InsertItemRequest request) async {
    return await client.insertItem(request);
  }

  Future<DeleteItemResponse> deleteItem(DeleteItemRequest request) async {
    return await client.deleteItem(request);
  }
}