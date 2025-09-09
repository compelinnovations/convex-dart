Getting Started:

1. Create a new Flutter package:

    ```bash
    flutter create -t package my_api
    ```

2. Install the dependencies:

    ```bash
    cd my_api
    flutter pub add dev:convex_dart_builder dev:build_runner
    ```

3. Create a function spec by running `bunx convex function-spec > convex.json` and placing it in the `lib` directory.

4. Create a build.yaml file in the root directory with the following content:

    ```yaml
    targets:
      $default:
        builders:
          convex_dart_builder:
            generate_for:
              - lib/convex.json
            options:
              input_file: lib/convex.json
    ```
    If you've named your file differently, update the `generate_for` and `input_file` options accordingly.

5. Run the build:

    ```bash
    flutter pub run build_runner build
    ```

6. Install `my_api` as a dependency in your Flutter app.
    ```yaml
    dependencies:
      my_api:
        path: /path/to/my_api
    ```
8. Install `convex_dart` as a dependency in your Flutter app.
    ```bash
    flutter pub add convex_dart
    ```

9. Initialize the client:
    ```dart
    import 'package:my_api/my_api.dart';
    import 'package:flutter/material.dart';

    void main() async {
      await ConvexClient.init();
      runApp(MyApp());
    }
    ```

10. Use the client in your Flutter app.
    ```dart
    // Fetch tasks
    final tasks = await getTasks.execute(null);

    // Subscribe to tasks
    final subscription = await getTasks.subscribe(null, (event) {
      print(event);
    });
    
    // Cancel the subscription
    subscription.cancel();

    // Create a task
    final createTask = await createTask.execute(CreateTaskRequest(title: "Task 1"));
    ```