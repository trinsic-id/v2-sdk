/*
 * Connect API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using FileParameter = Trinsic.Connect.Client.FileParameter;
using OpenAPIDateConverter = Trinsic.Connect.Client.OpenAPIDateConverter;

namespace Trinsic.Connect.Model
{
    /// <summary>
    /// Defines VerificationType
    /// </summary>
    [JsonConverter(typeof(StringEnumConverter))]
    public enum VerificationType
    {
        /// <summary>
        /// Enum GovernmentId for value: GovernmentId
        /// </summary>
        [EnumMember(Value = "GovernmentId")]
        GovernmentId = 1
    }

}
