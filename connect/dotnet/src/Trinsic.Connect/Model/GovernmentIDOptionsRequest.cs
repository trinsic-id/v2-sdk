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
/// GovernmentIDOptionsRequest
/// </summary>
[DataContract(Name = "GovernmentIDOptionsRequest")]
public partial class GovernmentIDOptionsRequest
{
    /// <summary>
    /// Initializes a new instance of the <see cref="GovernmentIDOptionsRequest" /> class.
    /// </summary>
    /// <param name="idNumber">idNumber.</param>
    /// <param name="givenName">givenName.</param>
    /// <param name="familyName">familyName.</param>
    /// <param name="address">address.</param>
    /// <param name="dateOfBirth">dateOfBirth.</param>
    /// <param name="country">country.</param>
    /// <param name="issueDate">issueDate.</param>
    /// <param name="expirationDate">expirationDate.</param>
    public GovernmentIDOptionsRequest(bool idNumber = default(bool), bool givenName = default(bool), bool familyName = default(bool), bool address = default(bool), bool dateOfBirth = default(bool), bool country = default(bool), bool issueDate = default(bool), bool expirationDate = default(bool))
    {
        IdNumber = idNumber;
        GivenName = givenName;
        FamilyName = familyName;
        Address = address;
        DateOfBirth = dateOfBirth;
        Country = country;
        IssueDate = issueDate;
        ExpirationDate = expirationDate;
    }

    /// <summary>
    /// Gets or Sets IdNumber
    /// </summary>
    [DataMember(Name = "idNumber", EmitDefaultValue = true)]
    public bool IdNumber { get; set; }

    /// <summary>
    /// Gets or Sets GivenName
    /// </summary>
    [DataMember(Name = "givenName", EmitDefaultValue = true)]
    public bool GivenName { get; set; }

    /// <summary>
    /// Gets or Sets FamilyName
    /// </summary>
    [DataMember(Name = "familyName", EmitDefaultValue = true)]
    public bool FamilyName { get; set; }

    /// <summary>
    /// Gets or Sets Address
    /// </summary>
    [DataMember(Name = "address", EmitDefaultValue = true)]
    public bool Address { get; set; }

    /// <summary>
    /// Gets or Sets DateOfBirth
    /// </summary>
    [DataMember(Name = "dateOfBirth", EmitDefaultValue = true)]
    public bool DateOfBirth { get; set; }

    /// <summary>
    /// Gets or Sets Country
    /// </summary>
    [DataMember(Name = "country", EmitDefaultValue = true)]
    public bool Country { get; set; }

    /// <summary>
    /// Gets or Sets IssueDate
    /// </summary>
    [DataMember(Name = "issueDate", EmitDefaultValue = true)]
    public bool IssueDate { get; set; }

    /// <summary>
    /// Gets or Sets ExpirationDate
    /// </summary>
    [DataMember(Name = "expirationDate", EmitDefaultValue = true)]
    public bool ExpirationDate { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class GovernmentIDOptionsRequest {\n");
        sb.Append("  IdNumber: ").Append(IdNumber).Append("\n");
        sb.Append("  GivenName: ").Append(GivenName).Append("\n");
        sb.Append("  FamilyName: ").Append(FamilyName).Append("\n");
        sb.Append("  Address: ").Append(Address).Append("\n");
        sb.Append("  DateOfBirth: ").Append(DateOfBirth).Append("\n");
        sb.Append("  Country: ").Append(Country).Append("\n");
        sb.Append("  IssueDate: ").Append(IssueDate).Append("\n");
        sb.Append("  ExpirationDate: ").Append(ExpirationDate).Append("\n");
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
