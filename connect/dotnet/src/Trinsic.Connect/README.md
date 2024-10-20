# Trinsic.Connect - the C# library for the Connect API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This C# SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- SDK version: 0.0.8
- Generator version: 7.8.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.CSharpClientCodegen

<a id="frameworks-supported"></a>
## Frameworks supported

<a id="dependencies"></a>
## Dependencies

- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 13.0.2 or later
- [JsonSubTypes](https://www.nuget.org/packages/JsonSubTypes/) - 1.8.0 or later

The DLLs included in the package may not be the latest version. We recommend using [NuGet](https://docs.nuget.org/consume/installing-nuget) to obtain the latest version of the packages:
```
Install-Package Newtonsoft.Json
Install-Package JsonSubTypes
```
<a id="installation"></a>
## Installation
Run the following command to generate the DLL
- [Mac/Linux] `/bin/sh build.sh`
- [Windows] `build.bat`

Then include the DLL (under the `bin` folder) in the C# project, and use the namespaces:
```csharp
using Trinsic.Connect.Api;
using Trinsic.Connect.Client;
using Trinsic.Connect.Model;
```
<a id="packaging"></a>
## Packaging

A `.nuspec` is included with the project. You can follow the Nuget quickstart to [create](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#create-the-package) and [publish](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#publish-the-package) packages.

This `.nuspec` uses placeholders from the `.csproj`, so build the `.csproj` directly:

```
nuget pack -Build -OutputDirectory out Trinsic.Connect.csproj
```

Then, publish to a [local feed](https://docs.microsoft.com/en-us/nuget/hosting-packages/local-feeds) or [other host](https://docs.microsoft.com/en-us/nuget/hosting-packages/overview) and consume the new package via Nuget as usual.

<a id="usage"></a>
## Usage

To use the API client with a HTTP proxy, setup a `System.Net.WebProxy`
```csharp
Configuration c = new Configuration();
System.Net.WebProxy webProxy = new System.Net.WebProxy("http://myProxyUrl:80/");
webProxy.Credentials = System.Net.CredentialCache.DefaultCredentials;
c.Proxy = webProxy;
```

### Connections
Each ApiClass (properly the ApiClient inside it) will create an instance of HttpClient. It will use that for the entire lifecycle and dispose it when called the Dispose method.

To better manager the connections it's a common practice to reuse the HttpClient and HttpClientHandler (see [here](https://docs.microsoft.com/en-us/dotnet/architecture/microservices/implement-resilient-applications/use-httpclientfactory-to-implement-resilient-http-requests#issues-with-the-original-httpclient-class-available-in-net) for details). To use your own HttpClient instance just pass it to the ApiClass constructor.

```csharp
HttpClientHandler yourHandler = new HttpClientHandler();
HttpClient yourHttpClient = new HttpClient(yourHandler);
var api = new YourApiClass(yourHttpClient, yourHandler);
```

If you want to use an HttpClient and don't have access to the handler, for example in a DI context in Asp.net Core when using IHttpClientFactory.

```csharp
HttpClient yourHttpClient = new HttpClient();
var api = new YourApiClass(yourHttpClient);
```
You'll loose some configuration settings, the features affected are: Setting and Retrieving Cookies, Client Certificates, Proxy settings. You need to either manually handle those in your setup of the HttpClient or they won't be available.

Here an example of DI setup in a sample web project:

```csharp
services.AddHttpClient<YourApiClass>(httpClient =>
   new PetApi(httpClient));
```


<a id="getting-started"></a>
## Getting Started

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using Trinsic.Connect.Api;
using Trinsic.Connect.Client;
using Trinsic.Connect.Model;

namespace Example
{
    public class Example
    {
        public static void Main()
        {

            Configuration config = new Configuration();
            config.BasePath = "https://connect.trinsic.id";
            // Configure Bearer token for authorization: Bearer
            config.AccessToken = "YOUR_BEARER_TOKEN";

            // create instances of HttpClient, HttpClientHandler to be reused later with different Api classes
            HttpClient httpClient = new HttpClient();
            HttpClientHandler httpClientHandler = new HttpClientHandler();
            var apiInstance = new SessionsApi(httpClient, config, httpClientHandler);
            var sessionId = "sessionId_example";  // string | 

            try
            {
                CancelSessionResponse result = apiInstance.CancelSession(sessionId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling SessionsApi.CancelSession: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }

        }
    }
}
```

<a id="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://connect.trinsic.id*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SessionsApi* | [**CancelSession**](docs/SessionsApi.md#cancelsession) | **POST** /api/v1/sessions/{sessionId}/cancel | 
*SessionsApi* | [**CreateSession**](docs/SessionsApi.md#createsession) | **POST** /api/v1/sessions | 
*SessionsApi* | [**GetSession**](docs/SessionsApi.md#getsession) | **GET** /api/v1/sessions/{sessionId} | 
*SessionsApi* | [**ListSessions**](docs/SessionsApi.md#listsessions) | **GET** /api/v1/sessions | 
*SessionsApi* | [**RedactSession**](docs/SessionsApi.md#redactsession) | **POST** /api/v1/sessions/{sessionId}/redact | 


<a id="documentation-for-models"></a>
## Documentation for Models

 - [Model.Address](docs/Address.md)
 - [Model.CancelSessionResponse](docs/CancelSessionResponse.md)
 - [Model.CreateSessionRequest](docs/CreateSessionRequest.md)
 - [Model.CreateSessionResponse](docs/CreateSessionResponse.md)
 - [Model.DisclosedFields](docs/DisclosedFields.md)
 - [Model.DisclosedFieldsRequest](docs/DisclosedFieldsRequest.md)
 - [Model.DocumentData](docs/DocumentData.md)
 - [Model.FailureMessage](docs/FailureMessage.md)
 - [Model.GetSessionResponseV1](docs/GetSessionResponseV1.md)
 - [Model.IDVSessionState](docs/IDVSessionState.md)
 - [Model.IdentityData](docs/IdentityData.md)
 - [Model.ListSessionsResponse](docs/ListSessionsResponse.md)
 - [Model.OrderDirection](docs/OrderDirection.md)
 - [Model.PersonData](docs/PersonData.md)
 - [Model.Session](docs/Session.md)
 - [Model.SessionFailCode](docs/SessionFailCode.md)
 - [Model.SessionOrdering](docs/SessionOrdering.md)
 - [Model.ValidationResult](docs/ValidationResult.md)
 - [Model.Verification](docs/Verification.md)
 - [Model.VerificationFailCode](docs/VerificationFailCode.md)
 - [Model.VerificationState](docs/VerificationState.md)


<a id="documentation-for-authorization"></a>
## Documentation for Authorization


Authentication schemes defined for the API:
<a id="Bearer"></a>
### Bearer

- **Type**: Bearer Authentication
