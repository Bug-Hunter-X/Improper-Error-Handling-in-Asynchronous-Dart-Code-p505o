# Improper Error Handling in Asynchronous Dart

This repository showcases a common error in Dart asynchronous programming and its improved solution. The original code lacks robust error handling, while the solution demonstrates best practices.

## Bug
The `bug.dart` file contains a function that fetches data asynchronously.  The error handling is insufficient: it only prints the error, losing valuable context and making debugging difficult.

## Solution
The `bugSolution.dart` file demonstrates a better approach to error handling. Instead of a simple `print`, it provides more detailed information including error type, stack trace, and allows for more sophisticated error recovery strategies.