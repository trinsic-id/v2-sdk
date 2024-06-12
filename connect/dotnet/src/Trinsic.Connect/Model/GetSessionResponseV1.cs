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
    /// GetSessionResponseV1
    /// </summary>
    [DataContract(Name = "GetSessionResponseV1")]
    public partial class GetSessionResponseV1 : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GetSessionResponseV1" /> class.
        /// </summary>
        /// <param name="session">session.</param>
        public GetSessionResponseV1(Session session = default(Session))
        {
            this.Session = session;
        }

        /// <summary>
        /// Gets or Sets Session
        /// </summary>
        [DataMember(Name = "session", EmitDefaultValue = false)]
        public Session Session { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class GetSessionResponseV1 {\n");
            sb.Append("  Session: ").Append(Session).Append("\n");
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

}
