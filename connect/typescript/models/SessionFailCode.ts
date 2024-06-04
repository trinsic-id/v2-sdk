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
export const SessionFailCode = {
    SessionFailNone: "SessionFailNone",
    SessionFailInternal: "SessionFailInternal",
    SessionFailVerificationFailed: "SessionFailVerificationFailed",
    SessionFailAuthentication: "SessionFailAuthentication",
    SessionFailExpired: "SessionFailExpired",
    SessionFailUserCanceled: "SessionFailUserCanceled",
    SessionFailRpcCanceled: "SessionFailRpcCanceled",
} as const;
export type SessionFailCode =
    (typeof SessionFailCode)[keyof typeof SessionFailCode];

export function instanceOfSessionFailCode(value: any): boolean {
    for (const key in SessionFailCode) {
        if (Object.prototype.hasOwnProperty.call(SessionFailCode, key)) {
            if (
                (SessionFailCode as Record<string, SessionFailCode>)[key] ===
                value
            ) {
                return true;
            }
        }
    }
    return false;
}

export function SessionFailCodeFromJSON(json: any): SessionFailCode {
    return SessionFailCodeFromJSONTyped(json, false);
}

export function SessionFailCodeFromJSONTyped(
    json: any,
    ignoreDiscriminator: boolean,
): SessionFailCode {
    return json as SessionFailCode;
}

export function SessionFailCodeToJSON(value?: SessionFailCode | null): any {
    return value as any;
}
