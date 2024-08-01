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
/// IdentityData
/// </summary>
[DataContract(Name = "IdentityData")]
public partial class IdentityData
{
    /// <summary>
    /// Initializes a new instance of the <see cref="IdentityData" /> class.
    /// </summary>
    /// <param name="originatingIntegrationId">originatingIntegrationId.</param>
    /// <param name="person">person.</param>
    /// <param name="document">document.</param>
    /// <param name="linkedResources">linkedResources.</param>
    public IdentityData(string originatingIntegrationId = default(string), PersonData person = default(PersonData), DocumentData document = default(DocumentData), LinkedResources linkedResources = default(LinkedResources))
    {
        OriginatingIntegrationId = originatingIntegrationId;
        Person = person;
        Document = document;
        LinkedResources = linkedResources;
    }

    /// <summary>
    /// Gets or Sets OriginatingIntegrationId
    /// </summary>
    [DataMember(Name = "originatingIntegrationId", EmitDefaultValue = false)]
    public string OriginatingIntegrationId { get; set; }

    /// <summary>
    /// Gets or Sets Person
    /// </summary>
    [DataMember(Name = "person", EmitDefaultValue = false)]
    public PersonData Person { get; set; }

    /// <summary>
    /// Gets or Sets Document
    /// </summary>
    [DataMember(Name = "document", EmitDefaultValue = false)]
    public DocumentData Document { get; set; }

    /// <summary>
    /// Gets or Sets LinkedResources
    /// </summary>
    [DataMember(Name = "linkedResources", EmitDefaultValue = false)]
    public LinkedResources LinkedResources { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class IdentityData {\n");
        sb.Append("  OriginatingIntegrationId: ").Append(OriginatingIntegrationId).Append("\n");
        sb.Append("  Person: ").Append(Person).Append("\n");
        sb.Append("  Document: ").Append(Document).Append("\n");
        sb.Append("  LinkedResources: ").Append(LinkedResources).Append("\n");
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
