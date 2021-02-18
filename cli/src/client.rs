use greet::greeter_client::GreeterClient;
use greet::HelloRequest;

pub mod greet {
    tonic::include_proto!("greet");
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = GreeterClient::connect("http://localhost:5000").await?;
    let request = tonic::Request::new(HelloRequest {
        name: "Jace".into(),
    });

    let response = client.say_hello(request).await?;

    println!("RESPONSE={:?}", response);

    Ok(())
}
