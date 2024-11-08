import 'dart:convert';

Future<String> getUserId() async {
  var userData = await fetchUserData();
  var decodeData = jsonDecode(userData);
  return decodeData["id"];
}
