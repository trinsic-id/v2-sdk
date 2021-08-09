protoc --proto_path=../proto `
       --go_out=proto `
       --go-grpc_out=proto `
       --go_opt=paths=source_relative `
       --go-grpc_opt=paths=source_relative `
       ../proto/CoreService.proto ../proto/DebugService.proto ../proto/IssuerService.proto ../proto/ProviderService.proto ../proto/WalletService.proto ../proto/pbmse/pbmse.proto ../proto/models/Attributes.proto ../proto/models/Credentials.proto ../proto/models/CredentialTemplates.proto ../proto/models/Organizations.proto ../proto/models/Presentations.proto ../proto/models/PresentationTemplates.proto

Copy-Item -Path "./proto/pbmse/*"  -Destination "./proto/" -recurse -Force
Copy-Item -Path "./proto/models/*"  -Destination "./proto/" -recurse -Force
Remove-Item -Path "./proto/pbmse" -Force -Recurse
Remove-Item -Path "./proto/models" -Force -Recurse