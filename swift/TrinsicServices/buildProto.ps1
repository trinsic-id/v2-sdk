Set-Location $PSScriptRoot
protoc --proto_path=../../proto `
                       --swift_out=./Sources/TrinsicServices/proto `
                       --grpc-swift_out=./Sources/TrinsicServices/proto `
                       ../../proto/CoreService.proto `
                       ../../proto/DebugService.proto `
                       ../../proto/IssuerService.proto `
                       ../../proto/ProviderService.proto `
                       ../../proto/WalletService.proto `
                       ../../proto/pbmse/pbmse.proto `
                       ../../proto/models/Attributes.proto `
                       ../../proto/models/Credentials.proto `
                       ../../proto/models/CredentialTemplates.proto `
                       ../../proto/models/Organizations.proto `
                       ../../proto/models/Presentations.proto `
                       ../../proto/models/PresentationTemplates.proto