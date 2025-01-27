```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! Do something with the data
      final data = jsonDecode(response.body);
      print(data);
    } else {
      // Error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle errors properly
    print('Error fetching data: $e');
    rethrow; // Re-throw the error to allow further handling in the calling function 
  }
}
```