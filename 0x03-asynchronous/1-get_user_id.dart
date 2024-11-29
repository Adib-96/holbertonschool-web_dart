import '1-util.dart'; // Import the provided util.dart file

Future<String> getUserId() async {
  try {
    String userData = await fetchUserData();
    final user = jsonDecode(userData);
    return user['id'];
  } catch (e) {
    print('error caught: $e');
    return 'error caught: $e';
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );
