void main() {
  List<Map<String, List<String>>> categoryList = [
    {
      "Fruits": ["Apple", "Banana", "Mango"],
    },
    {
      "Vegetables": ["Tomato", "Carrot", "Potato"],
    },
  ];

  for (int i = 0; i < categoryList.length; i++) {
    Map<String, List<String>> categories = categoryList[i];

    List<String> cat = categories.keys.toList();

    for (int j = 0; j < cat.length; j++) {
      String categg = cat[j];

      print(categg);

      List<String> items = categories[categg]!;
      for (int k = 0; k < items.length; k++) {
        print(items[k]);
      }
    }
  }
}
