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

import * as runtime from "../runtime";
import type { FailureMessage, ValidationResult } from "../models/index";
import {
    FailureMessageFromJSON,
    FailureMessageToJSON,
    ValidationResultFromJSON,
    ValidationResultToJSON,
} from "../models/index";

export interface GetAttachmentRequest {
    attachmentAccessKey?: string;
}

/**
 *
 */
export class AttachmentsApi extends runtime.BaseAPI {
    /**
     * Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
     */
    async getAttachmentRaw(
        requestParameters: GetAttachmentRequest,
        initOverrides?: RequestInit | runtime.InitOverrideFunction,
    ): Promise<runtime.ApiResponse<void>> {
        const queryParameters: any = {};

        if (requestParameters["attachmentAccessKey"] != null) {
            queryParameters["attachmentAccessKey"] =
                requestParameters["attachmentAccessKey"];
        }

        const headerParameters: runtime.HTTPHeaders = {};

        if (this.configuration && this.configuration.accessToken) {
            const token = this.configuration.accessToken;
            const tokenString = await token("Bearer", []);

            if (tokenString) {
                headerParameters["Authorization"] = `Bearer ${tokenString}`;
            }
        }
        const response = await this.request(
            {
                path: `/api/v1/attachments/fetch`,
                method: "GET",
                headers: headerParameters,
                query: queryParameters,
            },
            initOverrides,
        );

        return new runtime.VoidApiResponse(response);
    }

    /**
     * Exchange an Attachment Access Key (from `IdentityData.Attachments`) for the raw contents of the linked resource.                Use this API to fetch document (front, back, portrait) or other (selfie) images from a verification, if relevant.
     */
    async getAttachment(
        requestParameters: GetAttachmentRequest = {},
        initOverrides?: RequestInit | runtime.InitOverrideFunction,
    ): Promise<void> {
        await this.getAttachmentRaw(requestParameters, initOverrides);
    }
}
