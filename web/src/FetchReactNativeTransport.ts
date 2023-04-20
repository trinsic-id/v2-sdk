import {throwIfAborted} from 'abort-controller-x';
import {ClientError, Metadata, Status} from 'nice-grpc-common';
import {Transport} from 'nice-grpc-web/src/client/Transport';
import {FetchTransportConfig} from "nice-grpc-web/lib/client/transports/fetch";
import {Base64} from "js-base64";

// @ts-ignore
// import {fetch} from "react-native-fetch-api";
// import { fetch } from "whatwg-fetch";
// import fetch from 'react-native-fetch-polyfill';

export function blobReaderAsync(myBlob: Blob): Promise<Uint8Array> {
    return new Promise((resolve, reject) => {
        const fileReader = new FileReader();
        fileReader.onloadend = function () {
            const dataString = (fileReader.result as string);
            const base64String = dataString.substring(dataString.indexOf(",")+1);
            const uint8Data = Base64.toUint8Array(base64String);
            resolve(uint8Data);
        }
        fileReader.readAsDataURL(myBlob);
    });
}

/**
 * Transport for browsers based on `fetch` API.
 */
export function FetchReactNativeTransport(config?: FetchTransportConfig): Transport {
    return async function* fetchTransport({url, body, metadata, signal, method}) {
        let requestBody: BodyInit;

        if (!method.requestStream) {
            let bodyBuffer: Uint8Array | undefined;

            for await (const chunk of body) {
                bodyBuffer = chunk;

                break;
            }

            requestBody = bodyBuffer!;
        } else {
            let iterator: AsyncIterator<Uint8Array> | undefined;

            requestBody = new ReadableStream({
                // @ts-ignore
                type: 'bytes',
                start() {
                    iterator = body[Symbol.asyncIterator]();
                },

                async pull(controller) {
                    const {done, value} = await iterator!.next();

                    if (done) {
                        controller.close();
                    } else {
                        controller.enqueue(value);
                    }
                },
                async cancel() {
                    await iterator!.return?.();
                },
            });
        }

        const response: Response = await fetch(url, {
            method: 'POST',
            body: requestBody,
            headers: metadataToHeaders(metadata),
            signal,
            cache: 'no-cache',
            ['duplex' as any]: 'half',
            credentials: config?.credentials,
        });

        yield {
            type: 'header',
            header: headersToMetadata(response.headers),
        };

        if (!response.ok) {
            const responseText = await response.text();

            throw new ClientError(
                method.path,
                getStatusFromHttpCode(response.status),
                getErrorDetailsFromHttpResponse(response.status, responseText),
            );
        }

        throwIfAborted(signal);

        const dataBlob = await response.blob();
        const myBlobArray = await blobReaderAsync(dataBlob);

        try {
            for (const uint8Array of [myBlobArray]) {
                if (uint8Array !== null) {
                    yield {
                        type: 'data',
                        data: uint8Array,
                    };
                }
            }
        } finally {
            throwIfAborted(signal);
        }
    };
}

// Lifted from: https://github.com/improbable-eng/grpc-web/blob/master/client/grpc-web-react-native-transport/src/index.ts
function stringToArrayBuffer(str: string): Uint8Array {
    const asArray = new Uint8Array(str.length);
    let arrayIndex = 0;
    for (let i = 0; i < str.length; i++) {
        const codePoint = (String.prototype as any).codePointAt ? (str as any).codePointAt(i) : codePointAtPolyfill(str, i);
        asArray[arrayIndex++] = codePoint & 0xFF;
    }
    return asArray;
}

function codePointAtPolyfill(str: string, index: number) {
    let code = str.charCodeAt(index);
    if (code >= 0xd800 && code <= 0xdbff) {
        const surr = str.charCodeAt(index + 1);
        if (surr >= 0xdc00 && surr <= 0xdfff) {
            code = 0x10000 + ((code - 0xd800) << 10) + (surr - 0xdc00);
        }
    }
    return code;
}

function metadataToHeaders(metadata: Metadata): Headers {
    const headers = new Headers();

    for (const [key, values] of metadata) {
        for (const value of values) {
            headers.append(
                key,
                typeof value === 'string' ? value : Base64.fromUint8Array(value, true),
            );
        }
    }

    return headers;
}

function headersToMetadata(headers: Headers): Metadata {
    const metadata = new Metadata();

    // @ts-ignore
    for (const [key, value] of headers) {
        if (key.endsWith('-bin')) {
            for (const item of value.split(/,\s?/)) {
                metadata.append(key, Base64.toUint8Array(item));
            }
        } else {
            metadata.set(key, value);
        }
    }

    return metadata;
}

function getStatusFromHttpCode(statusCode: number): Status {
    switch (statusCode) {
        case 200:
            return Status.OK;
        case 400:
            return Status.INTERNAL;
        case 401:
            return Status.UNAUTHENTICATED;
        case 403:
            return Status.PERMISSION_DENIED;
        case 404:
            return Status.UNIMPLEMENTED;
        case 429:
        case 502:
        case 503:
        case 504:
            return Status.UNAVAILABLE;
        default:
            return Status.UNKNOWN;
    }
}

function getErrorDetailsFromHttpResponse(
    statusCode: number,
    responseText: string,
): string {
    return (
        `Received HTTP ${statusCode} response: ` +
        (responseText.length > 1000
            ? responseText.slice(0, 1000) + '... (truncated)'
            : responseText)
    );
}
