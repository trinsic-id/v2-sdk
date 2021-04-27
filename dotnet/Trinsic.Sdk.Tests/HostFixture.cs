using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Sockets;
using System.Threading;
using System.Threading.Tasks;
using Autofac.Extensions.DependencyInjection;
using Grpc.Net.Client;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using Trinsic.Server;
using Xunit;

namespace Trinsic.Server.Tests
{
    [CollectionDefinition(CollectionDefinitionName)]
    public class HostFixture : IAsyncLifetime, ICollectionFixture<HostFixture>
    {
        public const string CollectionDefinitionName = "Host Collection";

        public static readonly string SocketPath = Path.Combine(Path.GetTempPath(), "grpc-transporter.tmp");

        public IHost WebHost { get; set; }
        public GrpcChannel Channel { get; set; }

        public Task DisposeAsync()
        {
            Channel.Dispose();
            return WebHost.StopAsync();
        }

        public Task InitializeAsync()
        {
            WebHost = Host.CreateDefaultBuilder()
                .UseServiceProviderFactory(new AutofacServiceProviderFactory())
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>();
                    webBuilder.ConfigureKestrel(options =>
                    {
                        if (File.Exists(SocketPath))
                        {
                            File.Delete(SocketPath);
                        }

                        options.ListenUnixSocket(SocketPath);
                    });
                }).Build();

            Channel = GrpcChannel.ForAddress("http://localhost", new GrpcChannelOptions
            {
                HttpHandler = CreateHttpHandler(SocketPath)
            });

            return WebHost.StartAsync();
        }

        private static SocketsHttpHandler CreateHttpHandler(string socketPath)
        {
            var udsEndPoint = new UnixDomainSocketEndPoint(socketPath);
            var connectionFactory = new UnixDomainSocketConnectionFactory(udsEndPoint);
            var socketsHttpHandler = new SocketsHttpHandler
            {
                ConnectCallback = connectionFactory.ConnectAsync
            };

            return socketsHttpHandler;
        }

        public class UnixDomainSocketConnectionFactory
        {
            private readonly EndPoint _endPoint;

            public UnixDomainSocketConnectionFactory(EndPoint endPoint)
            {
                _endPoint = endPoint;
            }

            public async ValueTask<Stream> ConnectAsync(SocketsHttpConnectionContext _, CancellationToken cancellationToken = default)
            {
                var socket = new Socket(AddressFamily.Unix, SocketType.Stream, ProtocolType.Unspecified);

                try
                {
                    await socket.ConnectAsync(_endPoint, cancellationToken).ConfigureAwait(false);
                    return new NetworkStream(socket, true);
                }
                catch (Exception ex)
                {
                    socket.Dispose();
                    throw new HttpRequestException($"Error connecting to '{_endPoint}'.", ex);
                }
            }
        }
    }
}
