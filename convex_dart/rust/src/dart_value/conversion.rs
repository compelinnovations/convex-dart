//! Utility functions for converting between the dart types and the convex types.
use std::collections::{BTreeMap, HashMap};

use convex::{ConvexError, FunctionResult, Value};
use flutter_rust_bridge::frb;

use crate::dart_value::{function::DartFunctionResult, DartConvexError, DartValue};

impl From<DartValue> for Value {
    fn from(dart_value: DartValue) -> Self {
        match dart_value {
            DartValue::Null => Value::Null,
            DartValue::Int64(value) => Value::Int64(value),
            DartValue::Float64(value) => Value::Float64(value),
            DartValue::Boolean(value) => Value::Boolean(value),
            DartValue::String(value) => Value::String(value),
            DartValue::Bytes(value) => Value::Bytes(value),
            DartValue::Array(value) => Value::Array(value.into_iter().map(|v| v.into()).collect()),
            DartValue::Object(value) => {
                Value::Object(value.into_iter().map(|(k, v)| (k, v.into())).collect())
            }
        }
    }
}

impl From<Value> for DartValue {
    fn from(value: Value) -> Self {
        match value {
            Value::Null => DartValue::Null,
            Value::Int64(value) => DartValue::Int64(value),
            Value::Float64(value) => DartValue::Float64(value),
            Value::Boolean(value) => DartValue::Boolean(value),
            Value::String(value) => DartValue::String(value),
            Value::Bytes(value) => DartValue::Bytes(value),
            Value::Array(value) => DartValue::Array(value.into_iter().map(|v| v.into()).collect()),
            Value::Object(value) => {
                DartValue::Object(value.into_iter().map(|(k, v)| (k, v.into())).collect())
            }
        }
    }
}
impl From<DartFunctionResult> for FunctionResult {
    fn from(value: DartFunctionResult) -> Self {
        match value {
            DartFunctionResult::ConvexError(err) => FunctionResult::ConvexError(err.into()),
            DartFunctionResult::ErrorMessage(msg) => FunctionResult::ErrorMessage(msg),
            DartFunctionResult::Value(value) => FunctionResult::Value(value.into()),
        }
    }
}

impl From<FunctionResult> for DartFunctionResult {
    fn from(value: FunctionResult) -> Self {
        match value {
            FunctionResult::ConvexError(err) => DartFunctionResult::ConvexError(err.into()),
            FunctionResult::ErrorMessage(msg) => DartFunctionResult::ErrorMessage(msg),
            FunctionResult::Value(value) => DartFunctionResult::Value(value.into()),
        }
    }
}

impl From<DartConvexError> for ConvexError {
    fn from(value: DartConvexError) -> Self {
        ConvexError {
            message: value.message,
            data: value.data.into(),
        }
    }
}
impl From<ConvexError> for DartConvexError {
    fn from(value: ConvexError) -> Self {
        DartConvexError {
            message: value.message,
            data: value.data.into(),
        }
    }
}

// flutter_rust_bridge does not support BTreeMap, so we use these functions to convert the types.
#[frb(sync)]
pub fn hashmap_to_btreemap(hashmap: HashMap<String, DartValue>) -> BTreeMap<String, Value> {
    hashmap.into_iter().map(|(k, v)| (k, v.into())).collect()
}
#[frb(sync)]
pub fn hashmap_to_btreemap_dart_value(
    hashmap: HashMap<String, DartValue>,
) -> BTreeMap<String, DartValue> {
    hashmap.into_iter().map(|(k, v)| (k, v.into())).collect()
}

#[frb(sync)]
pub fn btreemap_to_hashmap(btreemap: BTreeMap<String, Value>) -> HashMap<String, DartValue> {
    btreemap.into_iter().map(|(k, v)| (k, v.into())).collect()
}

#[frb(sync)]
pub fn btreemap_to_hashmap_dart_value(
    btreemap: BTreeMap<String, DartValue>,
) -> HashMap<String, DartValue> {
    btreemap.into_iter().map(|(k, v)| (k, v.into())).collect()
}
