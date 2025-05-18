// Simulated async function to fetch user count (API simulation)
Future<int> fetchUsersCount() async {
  // Simulate network delay
  await Future.delayed(Duration(seconds: 2));
  // Return some dummy count value
  return 42;
}

// The required function
Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print('Number of users: $count');
}
