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
import type { DisclosedFieldsRequest } from "./DisclosedFieldsRequest";
import {
    DisclosedFieldsRequestFromJSON,
    DisclosedFieldsRequestFromJSONTyped,
    DisclosedFieldsRequestToJSON,
} from "./DisclosedFieldsRequest";

/**
 *
 * @export
 * @interface CreateSessionRequest
 */
export interface CreateSessionRequest {
    /**
     * Whether to create this Session in Direct mode.
     *
     * Direct mode is used to execute a verification against a specific identity provider.
     * Users will not be shown the Connect Widget; therefore, reuse of Connect credentials, selection of an identity provider, and saving a verification for future reuse
     * are not available to the end user in direct mode.
     *
     * Sessions created in direct mode must be created with a `RedirectUrl` specified, and cannot be invoked using the frontend SDK at this time.
     * @type {boolean}
     * @memberof CreateSessionRequest
     */
    direct?: boolean;
    /**
     * The URL to redirect to after the user has completed the identity verification process.
     *
     * If `Direct` is set to `true`, this field is required.
     * @type {string}
     * @memberof CreateSessionRequest
     */
    redirectUrl?: string;
    /**
     * The list of allowed identity providers. If not specified, all available providers will be allowed.
     *
     * If `Direct` is `true`, this field must be set, and must have only a single entry.
     * If `Direct` is not specified or is `false`, this field may have any number of entries.
     * @type {Array<string>}
     * @memberof CreateSessionRequest
     */
    providers?: Array<string>;
    /**
     * Specific identity attributes to request. If not provided, all available attributes will be requested.
     * @type {DisclosedFieldsRequest}
     * @memberof CreateSessionRequest
     */
    disclosedFields?: DisclosedFieldsRequest;
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
        direct: json["direct"] == null ? undefined : json["direct"],
        redirectUrl:
            json["redirectUrl"] == null ? undefined : json["redirectUrl"],
        providers: json["providers"] == null ? undefined : json["providers"],
        disclosedFields:
            json["disclosedFields"] == null
                ? undefined
                : DisclosedFieldsRequestFromJSON(json["disclosedFields"]),
    };
}

export function CreateSessionRequestToJSON(
    value?: CreateSessionRequest | null,
): any {
    if (value == null) {
        return value;
    }
    return {
        direct: value["direct"],
        redirectUrl: value["redirectUrl"],
        providers: value["providers"],
        disclosedFields: DisclosedFieldsRequestToJSON(value["disclosedFields"]),
    };
}
