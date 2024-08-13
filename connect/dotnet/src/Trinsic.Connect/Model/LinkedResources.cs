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

namespace Trinsic.Connect.Model;

/// <summary>
/// Access tokens for linked resources (eg document / selfie images)
/// </summary>
[DataContract(Name = "LinkedResources")]
public partial class LinkedResources
{
    /// <summary>
    /// Initializes a new instance of the <see cref="LinkedResources" /> class.
    /// </summary>
    /// <param name="selfie">Token to access the selfie image (if relevant) for this verification.</param>
    /// <param name="documentFront">Token to access the document front image (if relevant) for this verification.</param>
    /// <param name="documentBack">Token to access the document back image (if relevant) for this verification.</param>
    /// <param name="documentPortrait">Token to access the document portrait image (if relevant and available) for this verification.                Specifically, this is a cropped version of the document front image which includes only the portrait on the document..</param>
    public LinkedResources(string selfie = default(string), string documentFront = default(string), string documentBack = default(string), string documentPortrait = default(string))
    {
        Selfie = selfie;
        DocumentFront = documentFront;
        DocumentBack = documentBack;
        DocumentPortrait = documentPortrait;
    }

    /// <summary>
    /// Token to access the selfie image (if relevant) for this verification
    /// </summary>
    /// <value>Token to access the selfie image (if relevant) for this verification</value>
    [DataMember(Name = "selfie", EmitDefaultValue = false)]
    public string Selfie { get; set; }

    /// <summary>
    /// Token to access the document front image (if relevant) for this verification
    /// </summary>
    /// <value>Token to access the document front image (if relevant) for this verification</value>
    [DataMember(Name = "documentFront", EmitDefaultValue = false)]
    public string DocumentFront { get; set; }

    /// <summary>
    /// Token to access the document back image (if relevant) for this verification
    /// </summary>
    /// <value>Token to access the document back image (if relevant) for this verification</value>
    [DataMember(Name = "documentBack", EmitDefaultValue = false)]
    public string DocumentBack { get; set; }

    /// <summary>
    /// Token to access the document portrait image (if relevant and available) for this verification.                Specifically, this is a cropped version of the document front image which includes only the portrait on the document.
    /// </summary>
    /// <value>Token to access the document portrait image (if relevant and available) for this verification.                Specifically, this is a cropped version of the document front image which includes only the portrait on the document.</value>
    [DataMember(Name = "documentPortrait", EmitDefaultValue = false)]
    public string DocumentPortrait { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class LinkedResources {\n");
        sb.Append("  Selfie: ").Append(Selfie).Append("\n");
        sb.Append("  DocumentFront: ").Append(DocumentFront).Append("\n");
        sb.Append("  DocumentBack: ").Append(DocumentBack).Append("\n");
        sb.Append("  DocumentPortrait: ").Append(DocumentPortrait).Append("\n");
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
