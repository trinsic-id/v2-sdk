use clap::ArgMatches;
use cli::proto::greet::{HelloRequest, greeter_client::GreeterClient};
use cli::SERVER_URL;

#[tokio::main]
pub async fn greet(_args: &ArgMatches<'_>) {
    let mut client = GreeterClient::connect(SERVER_URL).await.expect("Unable to connect to server");
    let request = tonic::Request::new(HelloRequest {
        name: "Jace".into(),
    });

    let response = client.say_hello(request).await.expect("Greet failed").into_inner();

    println!("Response: {}", response.message);

}


