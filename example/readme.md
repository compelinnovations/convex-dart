To run the tests in `api`, first build the rust crate in `convex_dart/rust` with `cargo build --release`.
Then place the `target/release/libconvex_dart.so` (Linux), `target/release/libconvex_dart.dylib` (macOS), `target/release/convex_dart.dll` (Windows)
where your platform expects shared libraries. On windows, this is anywhere in your PATH. On Linux, this is in your LD_LIBRARY_PATH. On macOS, this is in your DYLD_LIBRARY_PATH.

Then run the tests with `flutter test`.