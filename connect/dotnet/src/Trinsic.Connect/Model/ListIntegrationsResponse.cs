/*
 * Connect API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;
using Newtonsoft.Json;

namespace Trinsic.Connect.Model;

/// <summary>
/// ListIntegrationsResponse
/// </summary>
[DataContract(Name = "ListIntegrationsResponse")]
public partial class ListIntegrationsResponse
{
    /// <summary>
    /// Initializes a new instance of the <see cref="ListIntegrationsResponse" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected ListIntegrationsResponse() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="ListIntegrationsResponse" /> class.
    /// </summary>
    /// <param name="integrations">The list of integrations available to your account (required).</param>
    public ListIntegrationsResponse(List<Integration> integrations = default(List<Integration>))
    {
        Integrations = integrations ?? throw new ArgumentNullException("integrations is a required property for ListIntegrationsResponse and cannot be null");
    }

    /// <summary>
    /// The list of integrations available to your account
    /// </summary>
    /// <value>The list of integrations available to your account</value>
    [DataMember(Name = "integrations", IsRequired = true, EmitDefaultValue = true)]
    public List<Integration> Integrations { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class ListIntegrationsResponse {\n");
        sb.Append("  Integrations: ").Append(Integrations).Append("\n");
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
