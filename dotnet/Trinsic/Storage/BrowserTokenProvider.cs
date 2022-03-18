#if __BROWSER__
using System;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.JSInterop;
using Microsoft.JSInterop.WebAssembly;

namespace Trinsic;

public class BrowserTokenProvider : ITokenProvider
{
    private readonly IJSRuntime _jsRuntime;
    private string? _cachedToken;
    public BrowserTokenProvider(IJSRuntime jsRuntime) {
        _jsRuntime = jsRuntime;
    }
    
    public async Task<string?> GetAsync(string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        if (_cachedToken is not null) return _cachedToken;
        
        _cachedToken = await _jsRuntime.InvokeAsync<string?>("localStorage.getItem", cancellationToken, name);
        return _cachedToken;
    }
    public string? Get(string name = TokenDefaults.Name) {
        throw new NotImplementedException("sync method not supported, please use async overload instead");
    }
    public async Task SaveAsync(string authToken, string name = TokenDefaults.Name, CancellationToken cancellationToken = default) {
        _cachedToken = authToken;
        await _jsRuntime.InvokeVoidAsync("localStorage.setItem", cancellationToken, name, authToken);
    }
    public void Save(string authToken, string name = TokenDefaults.Name) {
        throw new NotImplementedException("sync method not supported, please use async overload instead");
    }
}
#endif
