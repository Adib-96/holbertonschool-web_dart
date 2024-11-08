class User {
  String? name;
  int? age;
  double? height;

  User({this.name, this.age, this.height});
  Map toJson() {
    var details = new Map();
    details['name'] = name;
    details["age"] = age;
    details["height"] = height;

    return details;
  }
}
