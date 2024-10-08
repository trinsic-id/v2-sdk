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
 * @interface DisclosedFields
 */
export interface DisclosedFields {
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    idNumber: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    givenName: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    familyName: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    address: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    dateOfBirth: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    country: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    issueDate: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    expirationDate: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    documentFront: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    documentBack: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    documentPortrait: boolean;
    /**
     *
     * @type {boolean}
     * @memberof DisclosedFields
     */
    selfie: boolean;
}

/**
 * Check if a given object implements the DisclosedFields interface.
 */
export function instanceOfDisclosedFields(
    value: object,
): value is DisclosedFields {
    if (!("idNumber" in value) || value["idNumber"] === undefined) return false;
    if (!("givenName" in value) || value["givenName"] === undefined)
        return false;
    if (!("familyName" in value) || value["familyName"] === undefined)
        return false;
    if (!("address" in value) || value["address"] === undefined) return false;
    if (!("dateOfBirth" in value) || value["dateOfBirth"] === undefined)
        return false;
    if (!("country" in value) || value["country"] === undefined) return false;
    if (!("issueDate" in value) || value["issueDate"] === undefined)
        return false;
    if (!("expirationDate" in value) || value["expirationDate"] === undefined)
        return false;
    if (!("documentFront" in value) || value["documentFront"] === undefined)
        return false;
    if (!("documentBack" in value) || value["documentBack"] === undefined)
        return false;
    if (
        !("documentPortrait" in value) ||
        value["documentPortrait"] === undefined
    )
        return false;
    if (!("selfie" in value) || value["selfie"] === undefined) return false;
    return true;
}

export function DisclosedFieldsFromJSON(json: any): DisclosedFields {
    return DisclosedFieldsFromJSONTyped(json, false);
}

export function DisclosedFieldsFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): DisclosedFields {
    if (json == null) {
        return json;
    }
    return {
        idNumber: json["idNumber"],
        givenName: json["givenName"],
        familyName: json["familyName"],
        address: json["address"],
        dateOfBirth: json["dateOfBirth"],
        country: json["country"],
        issueDate: json["issueDate"],
        expirationDate: json["expirationDate"],
        documentFront: json["documentFront"],
        documentBack: json["documentBack"],
        documentPortrait: json["documentPortrait"],
        selfie: json["selfie"],
    };
}

export function DisclosedFieldsToJSON(value?: DisclosedFields | null): any {
    if (value == null) {
        return value;
    }
    return {
        idNumber: value["idNumber"],
        givenName: value["givenName"],
        familyName: value["familyName"],
        address: value["address"],
        dateOfBirth: value["dateOfBirth"],
        country: value["country"],
        issueDate: value["issueDate"],
        expirationDate: value["expirationDate"],
        documentFront: value["documentFront"],
        documentBack: value["documentBack"],
        documentPortrait: value["documentPortrait"],
        selfie: value["selfie"],
    };
}
