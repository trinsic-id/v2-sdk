use self::google::protobuf::{value::Kind, *};
use google::protobuf::{ListValue, Value};
use serde::{
    de::{self, Error, SeqAccess, Visitor},
    ser::{SerializeMap, SerializeSeq},
    Deserialize, Deserializer, Serialize, Serializer,
};
use std::{collections::HashMap, fmt::Formatter};

pub mod google;
pub mod pbmse;
pub mod services;

impl Serialize for Struct {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer,
    {
        let mut map = serializer.serialize_map(Some(self.fields.len()))?;
        for (k, v) in &self.fields {
            map.serialize_entry(k, v)?;
        }
        map.end()
    }
}

impl Serialize for Value {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer,
    {
        match &self.kind {
            Some(x) => match x {
                value::Kind::NullValue(_) => serializer.serialize_unit(),
                value::Kind::NumberValue(v) => serializer.serialize_f64(*v),
                value::Kind::StringValue(v) => serializer.serialize_str(v),
                value::Kind::BoolValue(v) => serializer.serialize_bool(*v),
                value::Kind::StructValue(v) => v.serialize(serializer),
                value::Kind::ListValue(v) => {
                    let mut seq = serializer.serialize_seq(Some(v.values.len()))?;
                    for val in &v.values {
                        seq.serialize_element(&val)?;
                    }
                    seq.end()
                }
            },
            None => serializer.serialize_unit(),
        }
    }
}

impl<'de> Deserialize<'de> for Value {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: Deserializer<'de>,
    {
        deserializer.deserialize_any(Value::default())
    }
}

impl<'de> Deserialize<'de> for Struct {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: Deserializer<'de>,
    {
        deserializer.deserialize_map(Struct::default())
    }
}

impl<'de> Visitor<'de> for Struct {
    type Value = Struct;

    fn expecting(&self, formatter: &mut Formatter) -> std::fmt::Result {
        write!(formatter, "a map or `null`")
    }

    fn visit_map<A>(self, map: A) -> Result<Self::Value, A::Error>
    where
        A: de::MapAccess<'de>,
    {
        let mut result: HashMap<String, Value> = HashMap::new();
        let mut map = map;

        while let Some((k, v)) = map.next_entry().unwrap() {
            result.insert(k, v);
        }
        Ok(Struct { fields: result })
    }
}

impl<'de> Visitor<'de> for Value {
    type Value = Value;

    fn expecting(&self, formatter: &mut Formatter) -> std::fmt::Result {
        write!(formatter, "unrecognized value")
    }

    fn visit_map<A>(self, map: A) -> Result<Self::Value, A::Error>
    where
        A: de::MapAccess<'de>,
    {
        let mut fields: HashMap<String, Value> = HashMap::new();
        let mut map = map;

        while let Some((k, v)) = map.next_entry().unwrap() {
            fields.insert(k, v);
        }

        Ok(Value {
            kind: Some(Kind::StructValue(Struct { fields })),
        })
    }

    fn visit_bool<E>(self, v: bool) -> Result<Self::Value, E>
    where
        E: Error,
    {
        Ok(Value {
            kind: Some(Kind::BoolValue(v)),
        })
    }

    fn visit_u64<E>(self, v: u64) -> Result<Self::Value, E>
    where
        E: Error,
    {
        Ok(Value {
            kind: Some(Kind::NumberValue(v as f64)),
        })
    }

    fn visit_f64<E>(self, v: f64) -> Result<Self::Value, E>
    where
        E: Error,
    {
        Ok(Value {
            kind: Some(Kind::NumberValue(v)),
        })
    }

    fn visit_unit<E>(self) -> Result<Self::Value, E>
    where
        E: Error,
    {
        Ok(Value {
            kind: Some(Kind::NullValue(0)),
        })
    }

    fn visit_str<E>(self, v: &str) -> Result<Self::Value, E>
    where
        E: Error,
    {
        Ok(Value {
            kind: Some(Kind::StringValue(v.to_string())),
        })
    }

    fn visit_seq<A>(self, seq: A) -> Result<Self::Value, A::Error>
    where
        A: SeqAccess<'de>,
    {
        let mut values: Vec<Value> = vec![];
        let mut seq = seq;

        while let Some(k) = seq.next_element().unwrap() {
            values.push(k);
        }

        Ok(Value {
            kind: Some(Kind::ListValue(ListValue { values })),
        })
    }
}

// pub(crate) mod google {
//     pub mod protobuf {
//         pub use crate::proto::google::protobuf::*;
//     }
// }

// pub(crate) mod common {
//     pub mod v1 {
//         pub use crate::proto::services::common::v1::*;
//     }
// }
