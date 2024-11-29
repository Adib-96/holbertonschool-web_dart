import '2-util.dart'; // Import the provided util.dart file

Future<void> getUser() async {
  try {
    String user = await fetchUser();
    print(user);
  } catch (e) {
    print('error caught: $e');
  }
}

Future<String> fetchUser() => Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );
