use std::fs::{copy, remove_file};

fn main() {
    let config = tonic_build::configure()
        .build_server(false)
        .out_dir("./src/proto")
        .format(true);

    let mut prost_config = prost_build::Config::new();
    prost_config.compile_well_known_types();
    //.type_attribute(".", "#[derive(::serde::Serialize, ::serde::Deserialize)]");

    config
        .type_attribute(
            "JsonPayload",
            "#[derive(::serde::Serialize, ::serde::Deserialize)]",
        )
        .type_attribute(
            "JsonPayload.json",
            "#[derive(::serde::Serialize, ::serde::Deserialize)]",
        )
        .compile_with_config(
            prost_config,
            &[
                "../proto/pbmse/v1/pbmse.proto",
                "../proto/services/debug/v1/debug.proto",
                "../proto/services/common/v1/common.proto",
                "../proto/services/verifiable-credentials/v1/verifiable-credentials.proto",
                "../proto/services/universal-wallet/v1/universal-wallet.proto",
                "../proto/services/provider/v1/provider.proto",
                "../proto/services/trust-registry/v1/trust-registry.proto",
            ],
            &["../proto"],
        )
        .unwrap();

    cleanup!(
        "./src/proto/google.protobuf.rs",
        "./src/proto/google/protobuf/mod.rs"
    );
    cleanup!("./src/proto/pbmse.v1.rs", "./src/proto/pbmse/v1/mod.rs");
    cleanup!(
        "./src/proto/services.common.v1.rs",
        "./src/proto/services/common/v1/mod.rs"
    );
    cleanup!(
        "./src/proto/services.debug.v1.rs",
        "./src/proto/services/debug/v1/mod.rs"
    );
    cleanup!(
        "./src/proto/services.provider.v1.rs",
        "./src/proto/services/provider/v1/mod.rs"
    );
    cleanup!(
        "./src/proto/services.trustregistry.v1.rs",
        "./src/proto/services/trustregistry/v1/mod.rs"
    );
    cleanup!(
        "./src/proto/services.universalwallet.v1.rs",
        "./src/proto/services/universalwallet/v1/mod.rs"
    );
    cleanup!(
        "./src/proto/services.verifiablecredentials.v1.rs",
        "./src/proto/services/verifiablecredentials/v1/mod.rs"
    );
}

#[macro_export]
macro_rules! cleanup {
    ($from:expr,$to:expr) => {
        copy($from, $to).unwrap();
        remove_file($from).unwrap();
    };
}
