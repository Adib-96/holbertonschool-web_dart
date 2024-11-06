void outer(String name, String id) {
  String inner() {
    List<String> nameSplit = name.split(" ");
    return "Hello Agent ${nameSplit[1][0]}.${nameSplit[0]} your id is ${id}";
  }

  print(inner());
}
