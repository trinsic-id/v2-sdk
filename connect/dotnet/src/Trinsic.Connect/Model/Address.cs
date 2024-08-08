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
/// Address information for an individual
/// </summary>
[DataContract(Name = "Address")]
public partial class Address
{
    /// <summary>
    /// Initializes a new instance of the <see cref="Address" /> class.
    /// </summary>
    /// <param name="line1">line1.</param>
    /// <param name="line2">line2.</param>
    /// <param name="line3">line3.</param>
    /// <param name="city">city.</param>
    /// <param name="state">state.</param>
    /// <param name="postalCode">postalCode.</param>
    /// <param name="country">country.</param>
    /// <param name="fullAddress">The full address as a single string.</param>
    public Address(string line1 = default(string), string line2 = default(string), string line3 = default(string), string city = default(string), string state = default(string), string postalCode = default(string), string country = default(string), string fullAddress = default(string))
    {
        Line1 = line1;
        Line2 = line2;
        Line3 = line3;
        City = city;
        State = state;
        PostalCode = postalCode;
        Country = country;
        FullAddress = fullAddress;
    }

    /// <summary>
    /// Gets or Sets Line1
    /// </summary>
    [DataMember(Name = "line1", EmitDefaultValue = false)]
    public string Line1 { get; set; }

    /// <summary>
    /// Gets or Sets Line2
    /// </summary>
    [DataMember(Name = "line2", EmitDefaultValue = false)]
    public string Line2 { get; set; }

    /// <summary>
    /// Gets or Sets Line3
    /// </summary>
    [DataMember(Name = "line3", EmitDefaultValue = false)]
    public string Line3 { get; set; }

    /// <summary>
    /// Gets or Sets City
    /// </summary>
    [DataMember(Name = "city", EmitDefaultValue = false)]
    public string City { get; set; }

    /// <summary>
    /// Gets or Sets State
    /// </summary>
    [DataMember(Name = "state", EmitDefaultValue = false)]
    public string State { get; set; }

    /// <summary>
    /// Gets or Sets PostalCode
    /// </summary>
    [DataMember(Name = "postalCode", EmitDefaultValue = false)]
    public string PostalCode { get; set; }

    /// <summary>
    /// Gets or Sets Country
    /// </summary>
    [DataMember(Name = "country", EmitDefaultValue = false)]
    public string Country { get; set; }

    /// <summary>
    /// The full address as a single string
    /// </summary>
    /// <value>The full address as a single string</value>
    [DataMember(Name = "fullAddress", EmitDefaultValue = false)]
    public string FullAddress { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class Address {\n");
        sb.Append("  Line1: ").Append(Line1).Append("\n");
        sb.Append("  Line2: ").Append(Line2).Append("\n");
        sb.Append("  Line3: ").Append(Line3).Append("\n");
        sb.Append("  City: ").Append(City).Append("\n");
        sb.Append("  State: ").Append(State).Append("\n");
        sb.Append("  PostalCode: ").Append(PostalCode).Append("\n");
        sb.Append("  Country: ").Append(Country).Append("\n");
        sb.Append("  FullAddress: ").Append(FullAddress).Append("\n");
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
