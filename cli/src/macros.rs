#[macro_export]
macro_rules! grpc_channel {
    ($x:expr) => {
        Channel::from_shared(&$x.options)?.connect().await?
    };
}

/// Create a client for a given service type with
/// support for authenticated endpoints
#[macro_export]
macro_rules! grpc_client_with_auth {
    ($c:ty,$x:expr) => {
        <$c>::with_interceptor(grpc_channel!($x), $x)
    };
}

/// Create a client for a given service type with
/// support for authenticated endpoints
#[macro_export]
macro_rules! grpc_client {
    ($c:ty,$x:expr) => {
        <$c>::new(grpc_channel!($x))
    };
}
