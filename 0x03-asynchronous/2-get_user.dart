Future<void> getUser() async {
  try {
    String response = await fetchUser();
  } catch (err) {
    print("error caught: $err");
  }
}
