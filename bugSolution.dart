```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Data received: $data');
    } else {
      // Instead of a generic exception, throw a more specific one.
      throw HttpException('HTTP request failed', response.statusCode, response.body);
    }
  } on HttpException catch (e) {
    print('HTTP Error: ${e.message} (Status code: ${e.statusCode})
Response body: ${e.responseBody}');
  } on FormatException catch (e) {
    print('JSON decoding error: $e');
  } catch (e, stackTrace) {
    //Catch any other unexpected errors and log them along with the stack trace.
    print('An unexpected error occurred: $e
Stack Trace:
$stackTrace');
  }
}

class HttpException implements Exception {
  final String message;
  final int statusCode;
  final String? responseBody;

  HttpException(this.message, this.statusCode, [this.responseBody]);
  @override
  String toString() => 'HttpException: $message (Status code: $statusCode)';
}
```