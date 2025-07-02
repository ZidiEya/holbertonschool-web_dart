import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data and decode it
    final userData = await fetchUserData();
    final user = jsonDecode(userData);
    final userId = user['id'];

    // Fetch user orders and decode them
    final ordersData = await fetchUserOrders(userId);
    final orders = jsonDecode(ordersData);

    double total = 0.0;

    // Loop through each product and get its price
    for (String product in orders) {
      final priceData = await fetchProductPrice(product);
      final price = jsonDecode(priceData);
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}
