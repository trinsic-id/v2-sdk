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
/// Session
/// </summary>
[DataContract(Name = "Session")]
public partial class Session : IValidatableObject
{

    /// <summary>
    /// Gets or Sets State
    /// </summary>
    [DataMember(Name = "state", EmitDefaultValue = false)]
    public IDVSessionState? State { get; set; }

    /// <summary>
    /// Gets or Sets FailCode
    /// </summary>
    [DataMember(Name = "failCode", EmitDefaultValue = false)]
    public SessionFailCode? FailCode { get; set; }
    /// <summary>
    /// Initializes a new instance of the <see cref="Session" /> class.
    /// </summary>
    /// <param name="id">id.</param>
    /// <param name="clientToken">clientToken.</param>
    /// <param name="state">state.</param>
    /// <param name="verifications">verifications.</param>
    /// <param name="failCode">failCode.</param>
    /// <param name="resultVp">resultVp.</param>
    /// <param name="created">created.</param>
    /// <param name="updated">updated.</param>
    public Session(string id = default(string), string clientToken = default(string), IDVSessionState? state = default(IDVSessionState?), Dictionary<string, Verification> verifications = default(Dictionary<string, Verification>), SessionFailCode? failCode = default(SessionFailCode?), string resultVp = default(string), long created = default(long), long updated = default(long))
    {
        Id = id;
        ClientToken = clientToken;
        State = state;
        Verifications = verifications;
        FailCode = failCode;
        ResultVp = resultVp;
        Created = created;
        Updated = updated;
    }

    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name = "id", EmitDefaultValue = true)]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets ClientToken
    /// </summary>
    [DataMember(Name = "clientToken", EmitDefaultValue = true)]
    public string ClientToken { get; set; }

    /// <summary>
    /// Gets or Sets Verifications
    /// </summary>
    [DataMember(Name = "verifications", EmitDefaultValue = true)]
    public Dictionary<string, Verification> Verifications { get; set; }

    /// <summary>
    /// Gets or Sets ResultVp
    /// </summary>
    [DataMember(Name = "resultVp", EmitDefaultValue = true)]
    public string ResultVp { get; set; }

    /// <summary>
    /// Gets or Sets Created
    /// </summary>
    [DataMember(Name = "created", EmitDefaultValue = false)]
    public long Created { get; set; }

    /// <summary>
    /// Gets or Sets Updated
    /// </summary>
    [DataMember(Name = "updated", EmitDefaultValue = false)]
    public long Updated { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class Session {\n");
        sb.Append("  Id: ").Append(Id).Append("\n");
        sb.Append("  ClientToken: ").Append(ClientToken).Append("\n");
        sb.Append("  State: ").Append(State).Append("\n");
        sb.Append("  Verifications: ").Append(Verifications).Append("\n");
        sb.Append("  FailCode: ").Append(FailCode).Append("\n");
        sb.Append("  ResultVp: ").Append(ResultVp).Append("\n");
        sb.Append("  Created: ").Append(Created).Append("\n");
        sb.Append("  Updated: ").Append(Updated).Append("\n");
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
