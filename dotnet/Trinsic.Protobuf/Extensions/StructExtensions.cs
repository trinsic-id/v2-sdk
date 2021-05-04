using Newtonsoft.Json.Linq;
namespace Google.Protobuf.WellKnownTypes
{
    public static class StructExtensions
    {
        /// <summary>
        /// Converts to jtoken.
        /// </summary>
        /// <param name="message">The message.</param>
        /// <returns></returns>
        public static JToken ToJToken(this Struct message) => JToken.Parse(JsonFormatter.Default.Format(message));

        /// <summary>
        /// Converts to <c>JObject</c>.
        /// </summary>
        /// <param name="message">The message.</param>
        /// <returns></returns>
        public static JObject ToJObject(this Struct message) => JObject.Parse(JsonFormatter.Default.Format(message));
    }
}