import 'dart:convert';
import '3-util.dart'; // Importing fetchUserData and checkCredentials

Future<String> greetUser() async {
  try {
    String userJson = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userJson);
    String username = userMap['username'];
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool hasUser = await checkCredentials();
    print('There is a user: $hasUser');
    if (hasUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
