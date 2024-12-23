```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      print('Success');
    } else {
      // Error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Exception Handling
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled by a higher level
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Main function error: $e');
  }
}
```