import 'dart:convert'; // For json decoding
import '1-util.dart'; // To import fetchUserData()

Future<String> getUserId() async {
  String userJson = await fetchUserData();
  Map<String, dynamic> userMap = jsonDecode(userJson);
  return userMap['id'];
}
