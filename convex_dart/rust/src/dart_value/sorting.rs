//! Implementation of `Ord` and `Eq` for `Value` that works around limitations
//! of f64 by using a `TotalOrdF64` type.
use std::{cmp::Ordering, collections::BTreeMap};

use crate::dart_value::DartValue;

#[derive(Eq, PartialEq, Ord, PartialOrd)]
enum OrdDartValue<'a> {
    Null,
    Int64(i64),
    Float64(TotalOrdF64),
    Boolean(bool),
    String(&'a String),
    Bytes(&'a Vec<u8>),
    Array(&'a Vec<DartValue>),
    Object(&'a BTreeMap<String, DartValue>),
}

impl<'a> From<&'a DartValue> for OrdDartValue<'a> {
    fn from(v: &'a DartValue) -> OrdDartValue<'a> {
        match v {
            DartValue::Null => OrdDartValue::Null,
            DartValue::Int64(x) => OrdDartValue::Int64(*x),
            DartValue::Float64(x) => OrdDartValue::Float64(TotalOrdF64(*x)),
            DartValue::Boolean(x) => OrdDartValue::Boolean(*x),
            DartValue::String(x) => OrdDartValue::String(x),
            DartValue::Bytes(x) => OrdDartValue::Bytes(x),
            DartValue::Array(x) => OrdDartValue::Array(x),
            DartValue::Object(x) => OrdDartValue::Object(x),
        }
    }
}

#[derive(Clone, Debug)]
struct TotalOrdF64(f64);

impl Ord for TotalOrdF64 {
    fn cmp(&self, other: &Self) -> Ordering {
        self.0.total_cmp(&other.0)
    }
}
impl PartialOrd for TotalOrdF64 {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}
impl PartialEq for TotalOrdF64 {
    fn eq(&self, other: &Self) -> bool {
        matches!(self.cmp(other), Ordering::Equal)
    }
}
impl Eq for TotalOrdF64 {}

impl PartialEq for DartValue {
    fn eq(&self, other: &Self) -> bool {
        self.cmp(other) == Ordering::Equal
    }
}
impl Eq for DartValue {}

impl PartialOrd for DartValue {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl Ord for DartValue {
    fn cmp(&self, other: &Self) -> Ordering {
        OrdDartValue::from(self).cmp(&OrdDartValue::from(other))
    }
}
