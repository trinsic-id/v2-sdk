/* tslint:disable */
/* eslint-disable */
/**
 * Connect API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 *
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { mapValues } from "../runtime";
/**
 *
 * @export
 * @interface FailureMessage
 */
export interface FailureMessage {
    /**
     *
     * @type {string}
     * @memberof FailureMessage
     */
    message?: string | null;
}

/**
 * Check if a given object implements the FailureMessage interface.
 */
export function instanceOfFailureMessage(
    value: object,
): value is FailureMessage {
    return true;
}

export function FailureMessageFromJSON(json: any): FailureMessage {
    return FailureMessageFromJSONTyped(json, false);
}

export function FailureMessageFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): FailureMessage {
    if (json == null) {
        return json;
    }
    return {
        message: json["message"] == null ? undefined : json["message"],
    };
}

export function FailureMessageToJSON(value?: FailureMessage | null): any {
    if (value == null) {
        return value;
    }
    return {
        message: value["message"],
    };
}
