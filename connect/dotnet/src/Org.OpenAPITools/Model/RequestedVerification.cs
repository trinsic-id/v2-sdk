/*
 * Connect API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using System.Text;

namespace Org.OpenAPITools.Model;

/// <summary>
/// RequestedVerification
/// </summary>
[DataContract(Name = "RequestedVerification")]
public partial class RequestedVerification : IValidatableObject
{

    /// <summary>
    /// Gets or Sets Type
    /// </summary>
    [DataMember(Name = "type", EmitDefaultValue = false)]
    public VerificationType? Type { get; set; }
    /// <summary>
    /// Initializes a new instance of the <see cref="RequestedVerification" /> class.
    /// </summary>
    /// <param name="type">type.</param>
    /// <param name="governmentIdOptions">governmentIdOptions.</param>
    public RequestedVerification(VerificationType? type = default(VerificationType?), GovernmentIDOptions governmentIdOptions = default(GovernmentIDOptions))
    {
        Type = type;
        GovernmentIdOptions = governmentIdOptions;
    }

    /// <summary>
    /// Gets or Sets GovernmentIdOptions
    /// </summary>
    [DataMember(Name = "governmentIdOptions", EmitDefaultValue = false)]
    public GovernmentIDOptions GovernmentIdOptions { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class RequestedVerification {\n");
        sb.Append("  Type: ").Append(Type).Append("\n");
        sb.Append("  GovernmentIdOptions: ").Append(GovernmentIdOptions).Append("\n");
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

    /// <summary>
    /// To validate all properties of the instance
    /// </summary>
    /// <param name="validationContext">Validation context</param>
    /// <returns>Validation Result</returns>
    IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
    {
        yield break;
    }
}
