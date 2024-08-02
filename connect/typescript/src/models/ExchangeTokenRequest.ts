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
 * @interface ExchangeTokenRequest
 */
export interface ExchangeTokenRequest {
    /**
     *
     * @type {string}
     * @memberof ExchangeTokenRequest
     */
    token: string;
}

/**
 * Check if a given object implements the ExchangeTokenRequest interface.
 */
export function instanceOfExchangeTokenRequest(
    value: object,
): value is ExchangeTokenRequest {
    if (!("token" in value) || value["token"] === undefined) return false;
    return true;
}

export function ExchangeTokenRequestFromJSON(json: any): ExchangeTokenRequest {
    return ExchangeTokenRequestFromJSONTyped(json, false);
}

export function ExchangeTokenRequestFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): ExchangeTokenRequest {
    if (json == null) {
        return json;
    }
    return {
        token: json["token"],
    };
}

export function ExchangeTokenRequestToJSON(
    value?: ExchangeTokenRequest | null,
): any {
    if (value == null) {
        return value;
    }
    return {
        token: value["token"],
    };
}
