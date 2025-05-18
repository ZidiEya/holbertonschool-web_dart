import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Get user data and parse ID
    String userJson = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userJson);
    String userId = userMap['id'];

    // Get user's orders and decode
    String ordersJson = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersJson);

    double total = 0;

    // For each product, fetch price and accumulate total
    for (var product in orders) {
      String priceJson = await fetchProductPrice(product);
      double price = jsonDecode(priceJson).toDouble();
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}
