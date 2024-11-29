import 'dart:convert';
import '4-util.dart'; // Import the provided util.dart file

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    final user = jsonDecode(userData);
    String userId = user['id'];

    // Fetching user orders
    String ordersData = await fetchUserOrders(userId);
    List orders = jsonDecode(ordersData);

    double total = 0.0;
    // Calculate the total price for all ordered items
    for (var product in orders) {
      String productPriceData = await fetchProductPrice(product);
      double productPrice =
          double.parse(jsonDecode(productPriceData).toString());
      total += productPrice;
    }

    return total;
  } catch (e) {
    print('error caught: $e');
    return -1;
  }
}

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  return Future.delayed(
    const Duration(seconds: 2),
    () => json.encode(orders[id] ?? []),
  );
}

Future<String> fetchProductPrice(String product) async {
  var products = {"pizza": 20.30, "orange": 10.00, "water": 5.00, "soda": 8.50};
  return Future.delayed(
    const Duration(seconds: 2),
    () => json.encode(products[product]?.toString() ?? '0'),
  );
}
