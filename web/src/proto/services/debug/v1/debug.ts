/* eslint-disable */
import { Empty } from "../../../google/protobuf/empty";

export type DebuggingDefinition = typeof DebuggingDefinition;
export const DebuggingDefinition = {
    name: "Debugging",
    fullName: "services.debug.v1.Debugging",
    methods: {
        callEmpty: {
            name: "CallEmpty",
            requestType: Empty,
            requestStream: false,
            responseType: Empty,
            responseStream: false,
            options: {},
        },
        callEmptyAuth: {
            name: "CallEmptyAuth",
            requestType: Empty,
            requestStream: false,
            responseType: Empty,
            responseStream: false,
            options: {},
        },
    },
} as const;
