import '0-util.dart';

Future<void> usersCount() async {
  try {
    int count = await fetchUsersCount();
    print(count);
  } catch (e) {
    print('error caught: $e');
  }
}

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );
