/*
 * Connect API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Runtime.Serialization;
using System.Text;
using Newtonsoft.Json;

namespace Trinsic.Connect.Model;

/// <summary>
/// CreateSessionResponse
/// </summary>
[DataContract(Name = "CreateSessionResponse")]
public partial class CreateSessionResponse
{
    /// <summary>
    /// Initializes a new instance of the <see cref="CreateSessionResponse" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected CreateSessionResponse() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="CreateSessionResponse" /> class.
    /// </summary>
    /// <param name="session">The created Acceptance Session (required).</param>
    /// <param name="launchUrl">The URL that should be used to invoke the Acceptance Session on your user&#39;s device.                If the Session was created in &#x60;direct&#x60; mode, you should redirect your user&#39;s browser to this URL. The frontend SDK cannot presently be used to  invoke direct mode Sessions.                If the Session was not created in &#x60;direct&#x60; mode, you should pass this URL to your user&#39;s frontend and use the frontend SDK to invoke the Session.                This URL is sensitive and as such can only be obtained once. If you need to obtain it again, you will need to create a new Acceptance Session..</param>
    public CreateSessionResponse(Session session = default(Session), string launchUrl = default(string))
    {
        Session = session ?? throw new ArgumentNullException("session is a required property for CreateSessionResponse and cannot be null");
        LaunchUrl = launchUrl;
    }

    /// <summary>
    /// The created Acceptance Session
    /// </summary>
    /// <value>The created Acceptance Session</value>
    [DataMember(Name = "session", IsRequired = true, EmitDefaultValue = true)]
    public Session Session { get; set; }

    /// <summary>
    /// The URL that should be used to invoke the Acceptance Session on your user&#39;s device.                If the Session was created in &#x60;direct&#x60; mode, you should redirect your user&#39;s browser to this URL. The frontend SDK cannot presently be used to  invoke direct mode Sessions.                If the Session was not created in &#x60;direct&#x60; mode, you should pass this URL to your user&#39;s frontend and use the frontend SDK to invoke the Session.                This URL is sensitive and as such can only be obtained once. If you need to obtain it again, you will need to create a new Acceptance Session.
    /// </summary>
    /// <value>The URL that should be used to invoke the Acceptance Session on your user&#39;s device.                If the Session was created in &#x60;direct&#x60; mode, you should redirect your user&#39;s browser to this URL. The frontend SDK cannot presently be used to  invoke direct mode Sessions.                If the Session was not created in &#x60;direct&#x60; mode, you should pass this URL to your user&#39;s frontend and use the frontend SDK to invoke the Session.                This URL is sensitive and as such can only be obtained once. If you need to obtain it again, you will need to create a new Acceptance Session.</value>
    /// <example>https://connect.trinsic.id/api/session/launch?clientToken&#x3D;...</example>
    [DataMember(Name = "launchUrl", EmitDefaultValue = false)]
    public string LaunchUrl { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.Append("class CreateSessionResponse {\n");
        sb.Append("  Session: ").Append(Session).Append("\n");
        sb.Append("  LaunchUrl: ").Append(LaunchUrl).Append("\n");
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
