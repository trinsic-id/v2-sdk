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
import type { Session } from "./Session";
import {
    SessionFromJSON,
    SessionFromJSONTyped,
    SessionToJSON,
} from "./Session";

/**
 *
 * @export
 * @interface CreateSessionResponse
 */
export interface CreateSessionResponse {
    /**
     * The created Acceptance Session
     * @type {Session}
     * @memberof CreateSessionResponse
     */
    session: Session;
    /**
     * The URL that should be used to invoke the Acceptance Session on your user's device.
     *
     * If the Session was created in `direct` mode, you should redirect your user's browser to this URL. The frontend SDK cannot presently be used to
     * invoke direct mode Sessions.
     *
     * If the Session was not created in `direct` mode, you should pass this URL to your user's frontend and use the frontend SDK to invoke the Session.
     *
     * This URL is sensitive and as such can only be obtained once. If you need to obtain it again, you will need to create a new Acceptance Session.
     * @type {string}
     * @memberof CreateSessionResponse
     */
    launchUrl?: string;
}

/**
 * Check if a given object implements the CreateSessionResponse interface.
 */
export function instanceOfCreateSessionResponse(
    value: object,
): value is CreateSessionResponse {
    if (!("session" in value) || value["session"] === undefined) return false;
    return true;
}

export function CreateSessionResponseFromJSON(
    json: any,
): CreateSessionResponse {
    return CreateSessionResponseFromJSONTyped(json, false);
}

export function CreateSessionResponseFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): CreateSessionResponse {
    if (json == null) {
        return json;
    }
    return {
        session: SessionFromJSON(json["session"]),
        launchUrl: json["launchUrl"] == null ? undefined : json["launchUrl"],
    };
}

export function CreateSessionResponseToJSON(
    value?: CreateSessionResponse | null,
): any {
    if (value == null) {
        return value;
    }
    return {
        session: SessionToJSON(value["session"]),
        launchUrl: value["launchUrl"],
    };
}
