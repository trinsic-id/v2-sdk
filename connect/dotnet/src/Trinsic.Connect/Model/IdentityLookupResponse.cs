/*
 * Connect API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System.Runtime.Serialization;
using System.Text;
using Newtonsoft.Json;

namespace Trinsic.Connect.Model;

/// <summary>
/// IdentityLookupResponse
/// </summary>
[DataContract(Name = "IdentityLookupResponse")]
public partial class IdentityLookupResponse
{
    /// <summary>
    /// Initializes a new instance of the <see cref="IdentityLookupResponse" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected IdentityLookupResponse() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="IdentityLookupResponse" /> class.
    /// </summary>
    /// <param name="identityInNetwork">Whether the given phone number is known to have an identity in the network. (required).</param>
    public IdentityLookupResponse(bool identityInNetwork = default(bool))
    {
        IdentityInNetwork = identityInNetwork;
    }

    /// <summary>
    /// Whether the given phone number is known to have an identity in the network.
    /// </summary>
    /// <value>Whether the given phone number is known to have an identity in the network.</value>
    [DataMember(Name = "identityInNetwork", IsRequired = true, EmitDefaultValue = true)]
    public bool IdentityInNetwork { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class IdentityLookupResponse {\n");
        sb.Append("  IdentityInNetwork: ").Append(IdentityInNetwork).Append("\n");
        sb.Append("}\n");
        return sb.ToString();
    }

    /// <summary>
    /// Returns the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public virtual string ToJson()
    {
        return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }
}