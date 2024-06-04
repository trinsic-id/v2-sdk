/*
 * Connect API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace Org.OpenAPITools.Model;

/// <summary>
/// Defines SessionFailCode
/// </summary>
[JsonConverter(typeof(StringEnumConverter))]
public enum SessionFailCode
{
    /// <summary>
    /// Enum SessionFailNone for value: SessionFailNone
    /// </summary>
    [EnumMember(Value = "SessionFailNone")]
    SessionFailNone = 1,

    /// <summary>
    /// Enum SessionFailInternal for value: SessionFailInternal
    /// </summary>
    [EnumMember(Value = "SessionFailInternal")]
    SessionFailInternal = 2,

    /// <summary>
    /// Enum SessionFailVerificationFailed for value: SessionFailVerificationFailed
    /// </summary>
    [EnumMember(Value = "SessionFailVerificationFailed")]
    SessionFailVerificationFailed = 3,

    /// <summary>
    /// Enum SessionFailAuthentication for value: SessionFailAuthentication
    /// </summary>
    [EnumMember(Value = "SessionFailAuthentication")]
    SessionFailAuthentication = 4,

    /// <summary>
    /// Enum SessionFailExpired for value: SessionFailExpired
    /// </summary>
    [EnumMember(Value = "SessionFailExpired")]
    SessionFailExpired = 5,

    /// <summary>
    /// Enum SessionFailUserCanceled for value: SessionFailUserCanceled
    /// </summary>
    [EnumMember(Value = "SessionFailUserCanceled")]
    SessionFailUserCanceled = 6,

    /// <summary>
    /// Enum SessionFailRpcCanceled for value: SessionFailRpcCanceled
    /// </summary>
    [EnumMember(Value = "SessionFailRpcCanceled")]
    SessionFailRpcCanceled = 7
}
