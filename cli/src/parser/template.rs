use std::collections::HashMap;
use std::io::Stdin;

use clap::ArgMatches;
use serde::*;

#[derive(Debug, PartialEq)]
pub enum TemplateCommand {
    Create(CreateTemplateArgs),
    Get(GetTemplateArgs),
    List(ListTemplatesArgs),
    Search(SearchTemplatesArgs),
    Delete(DeleteTemplateArgs),
}

#[derive(Debug, PartialEq)]
pub struct CreateTemplateArgs {
    pub name: String,
    pub fields_file: Option<String>,
    pub fields_data: Option<String>,
    pub allow_additional: bool,
}

#[derive(Debug, PartialEq)]
pub struct GetTemplateArgs {
    pub id: String,
}

#[derive(Debug, PartialEq)]
pub struct ListTemplatesArgs {
    pub query: String,
}

#[derive(Debug, PartialEq)]
pub struct SearchTemplatesArgs {
    pub query: String,
}

#[derive(Debug, PartialEq)]
pub struct DeleteTemplateArgs {
    pub id: String,
}

#[derive(Serialize, Deserialize, Debug)]
pub struct Field {
    #[serde(default)]
    description: String,
    #[serde(default)]
    r#type: FieldType,
    #[serde(default)]
    optional: bool,
}

#[derive(Serialize, Deserialize, Debug)]
#[serde(rename_all = "lowercase")]
pub enum FieldType {
    String,
    Number,
    DateTime,
    Bool,
}

use crate::proto::services::verifiablecredentials::templates::v1::FieldType as ProtoFieldType;
use crate::proto::services::verifiablecredentials::templates::v1::TemplateField as ProtoField;

impl Default for FieldType {
    fn default() -> Self {
        FieldType::String
    }
}

impl Into<ProtoFieldType> for FieldType {
    fn into(self) -> ProtoFieldType {
        match self {
            FieldType::String => ProtoFieldType::String,
            FieldType::Number => ProtoFieldType::Number,
            FieldType::DateTime => ProtoFieldType::Datetime,
            FieldType::Bool => ProtoFieldType::Bool,
        }
    }
}

impl Into<ProtoField> for Field {
    fn into(self) -> ProtoField {
        let t: ProtoFieldType = self.r#type.into();
        return ProtoField {
            description: self.description,
            optional: self.optional,
            r#type: t as i32,
        };
    }
}

pub fn to_map(map: HashMap<String, Field>) -> HashMap<String, ProtoField> {
    let mut result: HashMap<String, ProtoField> = HashMap::new();

    for (k, v) in map {
        result.insert(k, v.into());
    }
    result
}

pub fn parse(args: &ArgMatches) -> TemplateCommand {
    todo!("todo")
}

#[cfg(test)]
pub mod test {
    use std::collections::{BTreeMap, HashMap};

    use serde::__private::de::StrDeserializer;

    use super::{Field, FieldType};

    #[test]
    fn serialize_fields() {
        let f = super::Field {
            optional: false,
            r#type: FieldType::Number,
            description: "desc".to_string(),
        };

        let json = serde_json::to_string_pretty(&f);

        println!("{}", json.unwrap())
    }

    #[test]
    fn deserialize_field_map() {
        let json = r#"{
            "firstName": {},
            "lastName": {
                "optional": true
            },
            "age": {
                "description": "age of subject",
                "type": "number"
            }
        }"#;

        let obj: BTreeMap<String, Field> = serde_json::from_str(json).unwrap();

        println!("{:#?}", obj);
    }

    #[test]
    fn serialize_map() {
        let mut f: BTreeMap<String, Field> = BTreeMap::new();
        f.insert(
            "firstName".to_string(),
            Field {
                description: "my field".to_string(),
                r#type: FieldType::Number,
                optional: true,
            },
        );

        let json = serde_json::to_string_pretty(&f);

        println!("{}", json.unwrap());
    }
}
