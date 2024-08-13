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
 * @interface ExchangeResultsKeyRequest
 */
export interface ExchangeResultsKeyRequest {
    /**
     * The Results Access Key to exchange
     * @type {string}
     * @memberof ExchangeResultsKeyRequest
     */
    resultsAccessKey: string;
}

/**
 * Check if a given object implements the ExchangeResultsKeyRequest interface.
 */
export function instanceOfExchangeResultsKeyRequest(
    value: object,
): value is ExchangeResultsKeyRequest {
    if (
        !("resultsAccessKey" in value) ||
        value["resultsAccessKey"] === undefined
    )
        return false;
    return true;
}

export function ExchangeResultsKeyRequestFromJSON(
    json: any,
): ExchangeResultsKeyRequest {
    return ExchangeResultsKeyRequestFromJSONTyped(json, false);
}

export function ExchangeResultsKeyRequestFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): ExchangeResultsKeyRequest {
    if (json == null) {
        return json;
    }
    return {
        resultsAccessKey: json["resultsAccessKey"],
    };
}

export function ExchangeResultsKeyRequestToJSON(
    value?: ExchangeResultsKeyRequest | null,
): any {
    if (value == null) {
        return value;
    }
    return {
        resultsAccessKey: value["resultsAccessKey"],
    };
}
