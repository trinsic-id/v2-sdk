/// Support for doing something awesome.
///
/// More dartdocs go here.
library trinsic_dart;

export 'src/access_management_service.dart';
export 'src/credential_service.dart';
export 'src/file_management_service.dart';
export 'src/provider_service.dart';
export 'src/template_service.dart';
export 'src/trinsic_service.dart';
export 'src/trustregistry_service.dart';
export 'src/wallet_service.dart';

// Unfortunately, dart can't glob export. :(
export 'src/proto/sdk/options/v1/options.pb.dart';
export 'src/proto/sdk/options/v1/options.pbenum.dart';
export 'src/proto/sdk/options/v1/options.pbjson.dart';

export 'src/proto/services/account/v1/account.pb.dart';
export 'src/proto/services/account/v1/account.pbenum.dart';
export 'src/proto/services/account/v1/account.pbgrpc.dart';
export 'src/proto/services/account/v1/account.pbjson.dart';

export 'src/proto/services/common/v1/common.pb.dart';
export 'src/proto/services/common/v1/common.pbenum.dart';
export 'src/proto/services/common/v1/common.pbjson.dart';

export 'src/proto/services/event/v1/event.pb.dart';
export 'src/proto/services/event/v1/event.pbenum.dart';
export 'src/proto/services/event/v1/event.pbjson.dart';

export 'src/proto/services/file-management/v1/file-management.pb.dart';
export 'src/proto/services/file-management/v1/file-management.pbenum.dart';
export 'src/proto/services/file-management/v1/file-management.pbgrpc.dart';
export 'src/proto/services/file-management/v1/file-management.pbjson.dart';

export 'src/proto/services/provider/v1/provider.pb.dart';
export 'src/proto/services/provider/v1/provider.pbenum.dart';
export 'src/proto/services/provider/v1/provider.pbgrpc.dart';
export 'src/proto/services/provider/v1/provider.pbjson.dart';

export 'src/proto/services/trust-registry/v1/trust-registry.pb.dart';
export 'src/proto/services/trust-registry/v1/trust-registry.pbenum.dart';
export 'src/proto/services/trust-registry/v1/trust-registry.pbgrpc.dart';
export 'src/proto/services/trust-registry/v1/trust-registry.pbjson.dart';

export 'src/proto/services/universal-wallet/v1/universal-wallet.pb.dart';
export 'src/proto/services/universal-wallet/v1/universal-wallet.pbenum.dart';
export 'src/proto/services/universal-wallet/v1/universal-wallet.pbgrpc.dart';
export 'src/proto/services/universal-wallet/v1/universal-wallet.pbjson.dart';

export 'src/proto/services/verifiable-credentials/v1/verifiable-credentials.pb.dart';
export 'src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbenum.dart';
export 'src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbgrpc.dart';
export 'src/proto/services/verifiable-credentials/v1/verifiable-credentials.pbjson.dart';
