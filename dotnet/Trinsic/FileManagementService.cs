using System.Threading.Tasks;
using Microsoft.Extensions.Options;
using Trinsic.Sdk.Options.V1;
using Trinsic.Services.FileManagement.v1;

namespace Trinsic;

public class FileManagementService : ServiceBase
{
    public FileManagementService(ServiceOptions options)
        : base(options) {
        Client = new(Channel);
    }

    public FileManagementService() {
        Client = new(Channel);
    }

    internal FileManagementService(ITokenProvider tokenProvider) : base(new(), tokenProvider) {
        Client = new(Channel);
    }

    internal FileManagementService(ITokenProvider tokenProvider, IOptions<ServiceOptions> options)
        : base(options.Value, tokenProvider) {
        Client = new(Channel);
    }

    /// <summary>
    /// Gets the underlying grpc client
    /// </summary>
    private FileManagement.FileManagementClient Client { get; }

// BEGIN Code generated by protoc-gen-trinsic. DO NOT EDIT.
// target: D:\trinsic\sdk\dotnet\Trinsic\FileManagementService.cs

// END Code generated by protoc-gen-trinsic. DO NOT EDIT.
}