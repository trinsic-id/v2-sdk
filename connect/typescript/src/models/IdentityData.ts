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
import type { DocumentData } from "./DocumentData";
import {
    DocumentDataFromJSON,
    DocumentDataFromJSONTyped,
    DocumentDataToJSON,
} from "./DocumentData";
import type { PersonData } from "./PersonData";
import {
    PersonDataFromJSON,
    PersonDataFromJSONTyped,
    PersonDataToJSON,
} from "./PersonData";
import type { LinkedResources } from "./LinkedResources";
import {
    LinkedResourcesFromJSON,
    LinkedResourcesFromJSONTyped,
    LinkedResourcesToJSON,
} from "./LinkedResources";

/**
 *
 * @export
 * @interface IdentityData
 */
export interface IdentityData {
    /**
     * The ID of the integration from which this data originated (eg "yoti", "clear")
     * @type {string}
     * @memberof IdentityData
     */
    originatingIntegrationId?: string;
    /**
     * Identity data of the individual who was verified
     * @type {PersonData}
     * @memberof IdentityData
     */
    person?: PersonData;
    /**
     * Identity data of the document involved in verification, if relevant
     * @type {DocumentData}
     * @memberof IdentityData
     */
    document?: DocumentData;
    /**
     * Access tokens for linked resources (eg document/selfie images)
     * @type {LinkedResources}
     * @memberof IdentityData
     */
    linkedResources?: LinkedResources;
}

/**
 * Check if a given object implements the IdentityData interface.
 */
export function instanceOfIdentityData(value: object): value is IdentityData {
    return true;
}

export function IdentityDataFromJSON(json: any): IdentityData {
    return IdentityDataFromJSONTyped(json, false);
}

export function IdentityDataFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): IdentityData {
    if (json == null) {
        return json;
    }
    return {
        originatingIntegrationId:
            json["originatingIntegrationId"] == null
                ? undefined
                : json["originatingIntegrationId"],
        person:
            json["person"] == null
                ? undefined
                : PersonDataFromJSON(json["person"]),
        document:
            json["document"] == null
                ? undefined
                : DocumentDataFromJSON(json["document"]),
        linkedResources:
            json["linkedResources"] == null
                ? undefined
                : LinkedResourcesFromJSON(json["linkedResources"]),
    };
}

export function IdentityDataToJSON(value?: IdentityData | null): any {
    if (value == null) {
        return value;
    }
    return {
        originatingIntegrationId: value["originatingIntegrationId"],
        person: PersonDataToJSON(value["person"]),
        document: DocumentDataToJSON(value["document"]),
        linkedResources: LinkedResourcesToJSON(value["linkedResources"]),
    };
}