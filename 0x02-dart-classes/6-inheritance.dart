import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _userPassword;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    String? user_password,
  }) : super(password: user_password) {
    _userPassword = user_password;
  }

  set user_password(String? value) {
    _userPassword = value;
    password = value;
  }

  String? get user_password => _userPassword;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      height: json['height'],
      user_password: json['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
