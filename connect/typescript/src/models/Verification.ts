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
import type { NormalizedGovernmentIdData } from "./NormalizedGovernmentIdData";
import {
    NormalizedGovernmentIdDataFromJSON,
    NormalizedGovernmentIdDataFromJSONTyped,
    NormalizedGovernmentIdDataToJSON,
} from "./NormalizedGovernmentIdData";
import type { VerificationType } from "./VerificationType";
import {
    VerificationTypeFromJSON,
    VerificationTypeFromJSONTyped,
    VerificationTypeToJSON,
} from "./VerificationType";
import type { VerificationState } from "./VerificationState";
import {
    VerificationStateFromJSON,
    VerificationStateFromJSONTyped,
    VerificationStateToJSON,
} from "./VerificationState";
import type { GovernmentIDOptions } from "./GovernmentIDOptions";
import {
    GovernmentIDOptionsFromJSON,
    GovernmentIDOptionsFromJSONTyped,
    GovernmentIDOptionsToJSON,
} from "./GovernmentIDOptions";
import type { VerificationFailCode } from "./VerificationFailCode";
import {
    VerificationFailCodeFromJSON,
    VerificationFailCodeFromJSONTyped,
    VerificationFailCodeToJSON,
} from "./VerificationFailCode";

/**
 *
 * @export
 * @interface Verification
 */
export interface Verification {
    /**
     *
     * @type {string}
     * @memberof Verification
     */
    id?: string;
    /**
     *
     * @type {VerificationType}
     * @memberof Verification
     */
    type?: VerificationType;
    /**
     *
     * @type {VerificationState}
     * @memberof Verification
     */
    state?: VerificationState;
    /**
     *
     * @type {VerificationFailCode}
     * @memberof Verification
     */
    failCode?: VerificationFailCode;
    /**
     *
     * @type {boolean}
     * @memberof Verification
     */
    reused?: boolean;
    /**
     *
     * @type {number}
     * @memberof Verification
     */
    updated?: number;
    /**
     *
     * @type {GovernmentIDOptions}
     * @memberof Verification
     */
    governmentIdOptions?: GovernmentIDOptions;
    /**
     *
     * @type {NormalizedGovernmentIdData}
     * @memberof Verification
     */
    normalizedGovernmentIdData?: NormalizedGovernmentIdData;
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
        id: json["id"] == null ? undefined : json["id"],
        type:
            json["type"] == null
                ? undefined
                : VerificationTypeFromJSON(json["type"]),
        state:
            json["state"] == null
                ? undefined
                : VerificationStateFromJSON(json["state"]),
        failCode:
            json["failCode"] == null
                ? undefined
                : VerificationFailCodeFromJSON(json["failCode"]),
        reused: json["reused"] == null ? undefined : json["reused"],
        updated: json["updated"] == null ? undefined : json["updated"],
        governmentIdOptions:
            json["governmentIdOptions"] == null
                ? undefined
                : GovernmentIDOptionsFromJSON(json["governmentIdOptions"]),
        normalizedGovernmentIdData:
            json["normalizedGovernmentIdData"] == null
                ? undefined
                : NormalizedGovernmentIdDataFromJSON(
                      json["normalizedGovernmentIdData"],
                  ),
    };
}

export function VerificationToJSON(value?: Verification | null): any {
    if (value == null) {
        return value;
    }
    return {
        id: value["id"],
        type: VerificationTypeToJSON(value["type"]),
        state: VerificationStateToJSON(value["state"]),
        failCode: VerificationFailCodeToJSON(value["failCode"]),
        reused: value["reused"],
        updated: value["updated"],
        governmentIdOptions: GovernmentIDOptionsToJSON(
            value["governmentIdOptions"],
        ),
        normalizedGovernmentIdData: NormalizedGovernmentIdDataToJSON(
            value["normalizedGovernmentIdData"],
        ),
    };
}
