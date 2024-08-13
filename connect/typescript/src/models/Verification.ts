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
import type { VerificationFailCode } from "./VerificationFailCode";
import {
    VerificationFailCodeFromJSON,
    VerificationFailCodeFromJSONTyped,
    VerificationFailCodeToJSON,
} from "./VerificationFailCode";

/**
 * A Verification contained within a Session
 * @export
 * @interface Verification
 */
export interface Verification {
    /**
     * The identity provider that was used to perform the Verification, if any
     * @type {string}
     * @memberof Verification
     */
    provider?: string;
    /**
     * If the Verification is in state `VerificationFailed`, this field contains the reason for failure
     * @type {VerificationFailCode}
     * @memberof Verification
     */
    failCode?: VerificationFailCode;
}

/**
 * Check if a given object implements the Verification interface.
 */
export function instanceOfVerification(value: object): value is Verification {
    return true;
}

export function VerificationFromJSON(json: any): Verification {
    return VerificationFromJSONTyped(json, false);
}

export function VerificationFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): Verification {
    if (json == null) {
        return json;
    }
    return {
        provider: json["provider"] == null ? undefined : json["provider"],
        failCode:
            json["failCode"] == null
                ? undefined
                : VerificationFailCodeFromJSON(json["failCode"]),
    };
}

export function VerificationToJSON(value?: Verification | null): any {
    if (value == null) {
        return value;
    }
    return {
        provider: value["provider"],
        failCode: VerificationFailCodeToJSON(value["failCode"]),
    };
}
