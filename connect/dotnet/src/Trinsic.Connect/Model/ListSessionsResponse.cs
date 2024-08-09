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
/// ListSessionsResponse
/// </summary>
[DataContract(Name = "ListSessionsResponse")]
public partial class ListSessionsResponse
{
    /// <summary>
    /// Initializes a new instance of the <see cref="ListSessionsResponse" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected ListSessionsResponse() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="ListSessionsResponse" /> class.
    /// </summary>
    /// <param name="sessions">sessions (required).</param>
    /// <param name="total">The total number of sessions tied to your account (required).</param>
    /// <param name="more">Whether there are additional pages of sessions to retrieve (required).</param>
    public ListSessionsResponse(List<Session> sessions = default(List<Session>), int total = default(int), bool more = default(bool))
    {
        Sessions = sessions ?? throw new ArgumentNullException("sessions is a required property for ListSessionsResponse and cannot be null");
        Total = total;
        More = more;
    }

    /// <summary>
    /// Gets or Sets Sessions
    /// </summary>
    [DataMember(Name = "sessions", IsRequired = true, EmitDefaultValue = true)]
    public List<Session> Sessions { get; set; }

    /// <summary>
    /// The total number of sessions tied to your account
    /// </summary>
    /// <value>The total number of sessions tied to your account</value>
    /// <example>101</example>
    [DataMember(Name = "total", IsRequired = true, EmitDefaultValue = true)]
    public int Total { get; set; }

    /// <summary>
    /// Whether there are additional pages of sessions to retrieve
    /// </summary>
    /// <value>Whether there are additional pages of sessions to retrieve</value>
    /// <example>true</example>
    [DataMember(Name = "more", IsRequired = true, EmitDefaultValue = true)]
    public bool More { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class ListSessionsResponse {\n");
        sb.Append("  Sessions: ").Append(Sessions).Append("\n");
        sb.Append("  Total: ").Append(Total).Append("\n");
        sb.Append("  More: ").Append(More).Append("\n");
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
