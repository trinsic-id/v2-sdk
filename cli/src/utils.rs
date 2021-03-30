use tonic::{metadata::MetadataValue, Request};
use std::fs::OpenOptions;
use std::io::{Read, Write, stdin, stdout};
use std::str;

pub fn read_file(filename: Option<&str>) -> Vec<u8> {
    match filename {
        Some(path) =>  {
            let mut file = OpenOptions::new().read(true).open(path).expect("Unable to open file");
            let mut data : Vec::<u8> = Vec::new();
            file.read_to_end(&mut data).expect("Unable to read file");
            data
        },
        None => {
            let mut data : Vec::<u8> = Vec::new();
            stdin().read_to_end(&mut data).expect("Unable to read file");
            data
        },
    }
}

pub fn read_file_as_string(filename: Option<&str>) -> String {
    str::from_utf8(&read_file(filename)).expect("Unable to read file as utf 8").to_string()
}


pub fn write_file(filename: Option<&str>, data: &Vec<u8>) {
    match filename {
        Some(out) => {
            let mut file = OpenOptions::new().write(true).create(true).open(out).expect("Unable to open file");
            file.write_all(&data).expect("Unable to write to file");
        },
        None => {
            stdout().write_all(&data).expect("Unable to write to file");
        },
    };
}

/*
pub fn capability_invocation_interceptor() -> impl Fn(Request<()>) -> Result<tonic::Request<()>, Box<dyn std::error::Error>> {
    

    move |mut req: Request<()>| {
        let capability_invocation = read_file_as_string(Some("capability_invocation.bin"));
        req.metadata_mut().insert("Capability-Invocation", capability_invocation.parse().unwrap());
        Ok(req)
    }
}
*/
