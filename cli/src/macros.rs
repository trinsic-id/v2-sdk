#[macro_export]
macro_rules! grpc_channel {
    ($x:expr) => {
        Channel::from_shared($x.server.address.clone())
            .unwrap()
            .connect()
            .await
            .expect("Unable to connect to server")
    };
}

/// Create a client for a given service type with
/// support for authenticatd endpoints
#[macro_export]
macro_rules! grpc_client_with_auth {
    ($c:ty,$x:expr) => {
        <$c>::with_interceptor(grpc_channel!($x), $x);
    };
}
