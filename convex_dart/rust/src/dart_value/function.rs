use flutter_rust_bridge::frb;

use crate::dart_value::{DartConvexError, DartValue};

/// Result of a Convex function (query/mutation/action).
///
/// The function returns a Convex value or an error message string.
#[derive(Clone, Eq, PartialEq)]
#[frb(non_opaque)]
pub enum DartFunctionResult {
    /// The Convex value returned on a successful run of a Convex function
    Value(DartValue),
    /// The error message of a Convex function run that does not complete
    /// successfully.
    ErrorMessage(String),
    /// The error payload of a Convex function run that doesn't complete
    /// successfully, with an application-level error.
    ConvexError(DartConvexError),
}
