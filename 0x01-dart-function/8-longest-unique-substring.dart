String longestUniqueSubstring(String str) {
  int length = str.length;
  int i = 0;
  List<String> store = [];

  while (i < length) {
    if (!store.contains(str[i])) {
      store.add(str[i]);
    } else {
      store.remove(str[i]);
      store.add(str[i]);
    }
    i++;
  }

  return store.join(""); // Output the result
}
