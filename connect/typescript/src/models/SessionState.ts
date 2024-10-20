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

/**
 *
 * @export
 */
export const SessionState = {
    IdvCreated: "IdvCreated",
    IdvInitiated: "IdvInitiated",
    IdvAuthenticating: "IdvAuthenticating",
    IdvInProgress: "IdvInProgress",
    IdvSuccess: "IdvSuccess",
    IdvFailed: "IdvFailed",
} as const;
export type SessionState = (typeof SessionState)[keyof typeof SessionState];

export function instanceOfSessionState(value: any): boolean {
    for (const key in SessionState) {
        if (Object.prototype.hasOwnProperty.call(SessionState, key)) {
            if (SessionState[key as keyof typeof SessionState] === value) {
                return true;
            }
        }
    }
    return false;
}

export function SessionStateFromJSON(json: any): SessionState {
    return SessionStateFromJSONTyped(json, false);
}

export function SessionStateFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): SessionState {
    return json as SessionState;
}

export function SessionStateToJSON(value?: SessionState | null): any {
    return value as any;
}