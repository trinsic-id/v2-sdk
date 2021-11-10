namespace Trinsic.Services.Common.V1;

public static class ModelExtensions
{
    public static string FormatUrl(this ServerConfig serverConfig) =>
        $"{(serverConfig.UseTls ? "https" : "http")}://{serverConfig.Endpoint}:{serverConfig.Port}";
}