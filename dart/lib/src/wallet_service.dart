import 'package:trinsic_dart/src/proto/sdk/options/v1/options.pb.dart';
import 'package:trinsic_dart/src/proto/services/universal-wallet/v1/universal-wallet.pbgrpc.dart';
import 'package:trinsic_dart/src/service_base.dart';


class WalletService extends ServiceBase {
  late UniversalWalletClient client;

  WalletService(TrinsicOptions? serverOptions)
      : super(serverOptions) {
    client = UniversalWalletClient(super.channel);
  }

  Future<SearchResponse> searchWallet(SearchRequest request) async {
    if (request.query == "") {
      request.query = "SELECT c.id, c.type, c.data FROM c OFFSET 0 LIMIT 100";
    }
    return await search(request);
  }
// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: /home/runner/work/sdk/sdk/dart/lib/src/wallet_service.dart

  Future<GetItemResponse> getItem(GetItemRequest request) async {
    ///  Retrieve an item from the wallet with a given item identifier

    return client.getItem(request,
        options: await buildMetadata(request: request));
  }

  Future<SearchResponse> search(SearchRequest request) async {
    ///  Search the wallet using a SQL syntax

    return client.search(request,
        options: await buildMetadata(request: request));
  }

  Future<InsertItemResponse> insertItem(InsertItemRequest request) async {
    ///  Insert an item into the wallet

    return client.insertItem(request,
        options: await buildMetadata(request: request));
  }

  Future<UpdateItemResponse> updateItem(UpdateItemRequest request) async {
    ///  Update an item in the wallet

    return client.updateItem(request,
        options: await buildMetadata(request: request));
  }

  Future<DeleteItemResponse> deleteItem(DeleteItemRequest request) async {
    ///  Delete an item from the wallet permanently

    return client.deleteItem(request,
        options: await buildMetadata(request: request));
  }

  Future<DeleteWalletResponse> deleteWallet(DeleteWalletRequest request) async {
    ///  Delete a wallet and its credentials

    return client.deleteWallet(request,
        options: await buildMetadata(request: request));
  }

  Future<CreateWalletResponse> createWallet(CreateWalletRequest request) async {
    ///  Create a new wallet and generate an auth token for access

    return client.createWallet(request,
        options: await buildMetadata(request: request));
  }

  Future<GetWalletInfoResponse> getWalletInfo(
      GetWalletInfoRequest request) async {
    ///  Retrieve wallet details and configuration

    return client.getWalletInfo(request,
        options: await buildMetadata(request: request));
  }

  Future<GetMyInfoResponse> getMyInfo(GetMyInfoRequest request) async {
    ///  Retrieve wallet details and configuration about the currently authenticated wallet

    return client.getMyInfo(request,
        options: await buildMetadata(request: request));
  }

  Future<GenerateAuthTokenResponse> generateAuthToken(
      GenerateAuthTokenRequest request) async {
    ///  Generate new token for a given wallet and add it to the collection of known auth tokens.
    /// This endpoint requires authentication and will return a new token ID and auth token.
    /// Use this endpoint if you want to authorize another device, without having to share your
    /// existing auth token.

    return client.generateAuthToken(request,
        options: await buildMetadata(request: request));
  }

  Future<RevokeAuthTokenResponse> revokeAuthToken(
      RevokeAuthTokenRequest request) async {
    ///  Revokes a previously issued auth token and updates the collection of known auth tokens.
    /// This endpoint requires authentication.

    return client.revokeAuthToken(request,
        options: await buildMetadata(request: request));
  }

  Future<AddExternalIdentityInitResponse> addExternalIdentityInit(
      AddExternalIdentityInitRequest request) async {
    ///  Add new external identity to the current wallet, such as email, sms, ethereum address, etc.
    /// This identity ownership must be confirmed using `AddIdentityConfirm` via OTP, signature, etc.

    return client.addExternalIdentityInit(request,
        options: await buildMetadata(request: request));
  }

  Future<AddExternalIdentityConfirmResponse> addExternalIdentityConfirm(
      AddExternalIdentityConfirmRequest request) async {
    ///  Confirm identity added to the current wallet using `AddExternalIdentityInit`

    return client.addExternalIdentityConfirm(request,
        options: await buildMetadata(request: request));
  }

  Future<RemoveExternalIdentityResponse> removeExternalIdentity(
      RemoveExternalIdentityRequest request) async {
    ///  Remove an external identity from the current wallet

    return client.removeExternalIdentity(request,
        options: await buildMetadata(request: request));
  }

  Future<AuthenticateInitResponse> authenticateInit(
      AuthenticateInitRequest request) async {
    ///  Sign-in to an already existing wallet, using an identity added that was previously registered
    /// This endpoint does not require authentication, and will return a challenge to be signed or verified

    return client.authenticateInit(request,
        options: await buildMetadata(request: request));
  }

  Future<AuthenticateConfirmResponse> authenticateConfirm(
      AuthenticateConfirmRequest request) async {
    ///  Confirm sign-in to an already existing wallet and return authentication token

    return client.authenticateConfirm(request,
        options: await buildMetadata(request: request));
  }

  Future<ListWalletsResponse> listWallets(ListWalletsRequest request) async {
    ///  List all wallets in the ecosystem

    return client.listWallets(request,
        options: await buildMetadata(request: request));
  }
// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}
