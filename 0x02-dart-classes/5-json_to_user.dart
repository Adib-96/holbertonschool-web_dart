class User {
  int? id;
  String? name;
  int? age;
  double? height;

  User({this.id, this.name, this.age, this.height});
  Map<String, dynamic> toJson() {
    var details = Map<String, dynamic>();
    details['name'] = name;
    details["age"] = age;
    details["height"] = height;
    details["id"] = id;
    return details;
  }

  //static methode used to create User instance
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  @override
  String toString() {
    return "User(id: $id, name: $name, age: $age, height: $height)";
  }
}
