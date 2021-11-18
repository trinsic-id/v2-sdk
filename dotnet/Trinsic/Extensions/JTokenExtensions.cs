using Google.Protobuf;
using Google.Protobuf.WellKnownTypes;

namespace Newtonsoft.Json.Linq;

public static class JTokenExtensions
{
    /// <summary>
    /// Converts to struct.
    /// </summary>
    /// <returns></returns>
    public static Struct ToStruct(this JToken token) => JsonParser.Default.Parse<Struct>(token.ToString());
}
