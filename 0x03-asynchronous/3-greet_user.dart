import 'util.dart'; // Import the provided util.dart file

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    final user = jsonDecode(userData);
    return 'Hello ${user['username']}';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    bool credentialsValid = await checkCredentials();
    if (credentialsValid) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);
