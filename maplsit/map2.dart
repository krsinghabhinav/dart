void main() {
  Map<String, String> user = {
    'name': 'Abhinav',
    'email': 'abhi@example.com',
    'phone': '1234567890'
  };

  print(user['email']); // Accessing value

  user['email'] = 'abhinav@gmail.com'; // Updating value

  user['city'] = 'Delhi'; // Adding value

  print(user); // Print complete map

  user.forEach((key, value) {
    print('$key : $value'); // Iterating
  });

  print(user.containsKey('email')); // true
  print(user.containsValue('Delhi')); // true
}
