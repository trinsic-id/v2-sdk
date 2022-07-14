#[macro_export]
macro_rules! dict {
    (@single $($x:tt)*) => (());
    (@count $($rest:expr),*) => (<[()]>::len(&[$(dict!(@single $rest)),*]));

    ($($key:expr => $value:expr,)+) => { dict!($($key => $value),+) };
    ($($key:expr => $value:expr),*) => {
        {
            let mut _map = std::collections::BTreeMap::new();
            $(
                _map.insert($key, $value);
            )*
            _map
        }
    };
}

#[macro_export]
macro_rules! grpc_channel {
    ($x:expr) => {
        Channel::from_shared(&$x.options)?.connect().await?
    };
}

/// Create a client for a given service type with
/// support for authenticated endpoints
#[macro_export]
macro_rules! grpc_client_with_metadata {
    ($c:ty,$x:expr) => {
        <$c>::with_interceptor(grpc_channel!($x), MetadataVersion {})
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
