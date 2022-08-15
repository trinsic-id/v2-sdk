using Trinsic.Sdk.Options.V1;

namespace Trinsic.Services.Common.V1;

public static class ServiceOptionsExtensions
{
    public static string FormatUrl(this ServiceOptions options) {
        return $"{(options.ServerUseTls ? "https" : "http")}://{options.ServerEndpoint}:{options.ServerPort}";
    }

    public static ServiceOptions CloneWithAuthToken(this ServiceOptions options, string authToken) {
        var cloned = options.Clone();
        cloned.AuthToken = authToken;
        return cloned;
    }
}