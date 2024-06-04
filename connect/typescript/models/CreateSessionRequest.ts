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
import type { RequestedVerification } from "./RequestedVerification";
import {
    RequestedVerificationFromJSON,
    RequestedVerificationFromJSONTyped,
    RequestedVerificationToJSON,
} from "./RequestedVerification";

/**
 *
 * @export
 * @interface CreateSessionRequest
 */
export interface CreateSessionRequest {
    /**
     *
     * @type {Array<RequestedVerification>}
     * @memberof CreateSessionRequest
     */
    verifications?: Array<RequestedVerification>;
}

/**
 * Check if a given object implements the CreateSessionRequest interface.
 */
export function instanceOfCreateSessionRequest(
    value: object,
): value is CreateSessionRequest {
    return true;
}

export function CreateSessionRequestFromJSON(json: any): CreateSessionRequest {
    return CreateSessionRequestFromJSONTyped(json, false);
}

export function CreateSessionRequestFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): CreateSessionRequest {
    if (json == null) {
        return json;
    }
    return {
        verifications:
            json["verifications"] == null
                ? undefined
                : (json["verifications"] as Array<any>).map(
                      RequestedVerificationFromJSON,
                  ),
    };
}

export function CreateSessionRequestToJSON(
    value?: CreateSessionRequest | null,
): any {
    if (value == null) {
        return value;
    }
    return {
        verifications:
            value["verifications"] == null
                ? undefined
                : (value["verifications"] as Array<any>).map(
                      RequestedVerificationToJSON,
                  ),
    };
}