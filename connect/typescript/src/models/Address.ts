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
 * Address information for an individual
 * @export
 * @interface Address
 */
export interface Address {
    /**
     *
     * @type {string}
     * @memberof Address
     */
    line1?: string;
    /**
     *
     * @type {string}
     * @memberof Address
     */
    line2?: string;
    /**
     *
     * @type {string}
     * @memberof Address
     */
    line3?: string;
    /**
     *
     * @type {string}
     * @memberof Address
     */
    city?: string;
    /**
     *
     * @type {string}
     * @memberof Address
     */
    state?: string;
    /**
     *
     * @type {string}
     * @memberof Address
     */
    postalCode?: string;
    /**
     *
     * @type {string}
     * @memberof Address
     */
    country?: string;
    /**
     * The full address as a single string
     * @type {string}
     * @memberof Address
     */
    fullAddress?: string;
}

/**
 * Check if a given object implements the Address interface.
 */
export function instanceOfAddress(value: object): value is Address {
    return true;
}

export function AddressFromJSON(json: any): Address {
    return AddressFromJSONTyped(json, false);
}

export function AddressFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): Address {
    if (json == null) {
        return json;
    }
    return {
        line1: json["line1"] == null ? undefined : json["line1"],
        line2: json["line2"] == null ? undefined : json["line2"],
        line3: json["line3"] == null ? undefined : json["line3"],
        city: json["city"] == null ? undefined : json["city"],
        state: json["state"] == null ? undefined : json["state"],
        postalCode: json["postalCode"] == null ? undefined : json["postalCode"],
        country: json["country"] == null ? undefined : json["country"],
        fullAddress:
            json["fullAddress"] == null ? undefined : json["fullAddress"],
    };
}

export function AddressToJSON(value?: Address | null): any {
    if (value == null) {
        return value;
    }
    return {
        line1: value["line1"],
        line2: value["line2"],
        line3: value["line3"],
        city: value["city"],
        state: value["state"],
        postalCode: value["postalCode"],
        country: value["country"],
        fullAddress: value["fullAddress"],
    };
}
