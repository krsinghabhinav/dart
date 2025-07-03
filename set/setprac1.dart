void main() {
  // Set<int> num = {1, 2, 3, 2, 4, 5, 3};
  // print(num);

  // Set<int> number = {1, 2, 3};
  // number.add(34);
  // print(number);

  Set<String> tags = {'Sale', 'Trending'};
  // tags.add('New');
  // tags.add('Sale'); // won't be added again
  // // print(tags); // Output: {Sale, Trending, New}
  // // if (tags.contains("Sale")) {
  // //   print(" New is in the set");
  // // }

  // print(tags);

  // tags.remove("Sale");
  // print(tags);

  // Set<String> fruits = {'apple', 'banana', 'cherry', 'apple'};
  // for (var f in fruits) {
  //   print(f);
  // }

  Set<String> whishlist = {};

  void addToWishlist(String item) {
    if (whishlist.contains(item)) {
      print('$item is already in your wishlist');
    } else {
      whishlist.add(item);
      print('$item has been added to your wishlist');
    }
  }

  addToWishlist("shop");
  addToWishlist("shoes");
  addToWishlist("shoes");
  print(whishlist);
}
