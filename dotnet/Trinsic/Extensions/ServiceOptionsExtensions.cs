using Trinsic.Sdk.Options.V1;

namespace Trinsic.Services.Common.V1;

public static class ServiceOptionsExtensions
{
    public static string FormatUrl(this TrinsicOptions options) {
        return $"{(options.ServerUseTls ? "https" : "http")}://{options.ServerEndpoint}:{options.ServerPort}";
    }

    public static TrinsicOptions CloneWithAuthToken(this TrinsicOptions options, string authToken) {
        var cloned = options.Clone();
        cloned.AuthToken = authToken;
        return cloned;
    }
}