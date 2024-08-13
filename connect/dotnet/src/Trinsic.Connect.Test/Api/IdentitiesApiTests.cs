/*
 * Connect API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using Trinsic.Connect.Api;
using Xunit;
// uncomment below to import models
//using Trinsic.Connect.Model;

namespace Trinsic.Connect.Test.Api;

/// <summary>
///  Class for testing IdentitiesApi
/// </summary>
/// <remarks>
/// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
/// Please update the test case below to test the API endpoint.
/// </remarks>
public class IdentitiesApiTests : IDisposable
{
    private readonly IdentitiesApi instance;

    public IdentitiesApiTests()
    {
        instance = new IdentitiesApi();
    }

    public void Dispose()
    {
        // Cleanup when everything is done.
    }

    /// <summary>
    /// Test an instance of IdentitiesApi
    /// </summary>
    [Fact]
    public void InstanceTest()
    {
        // TODO uncomment below to test 'IsType' IdentitiesApi
        //Assert.IsType<IdentitiesApi>(instance);
    }

    /// <summary>
    /// Test CanReuseCredential
    /// </summary>
    [Fact]
    public void CanReuseCredentialTest()
    {
        // TODO uncomment below to test the method and replace null with proper value
        //CanReuseCredentialRequest? canReuseCredentialRequest = null;
        //var response = instance.CanReuseCredential(canReuseCredentialRequest);
        //Assert.IsType<CanReuseCredentialResponse>(response);
    }
}
