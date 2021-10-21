using Google.Protobuf;
using Google.Protobuf.WellKnownTypes;
using System;

namespace Newtonsoft.Json.Linq
{
    public static class JTokenExtensions
    {
        /// <summary>
        /// Converts to struct.
        /// </summary>
        /// <param name="jobj">The jobj.</param>
        /// <returns></returns>
        public static Struct ToStruct(this JToken token) => JsonParser.Default.Parse<Struct>(token.ToString());
    }
}