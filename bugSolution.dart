```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      print('Success');
    } else {
      // Error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Exception Handling
    print('Error in fetchData: $e');
    rethrow; // Re-throw the exception
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Error in main: $e');
  }
}
```