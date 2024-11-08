Future<void> usersCount() async {
  var response = await fetchUsersCount();
  print(response);
}
