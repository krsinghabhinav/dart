void main() {
  Map<String, Map<String, List<Map<String, dynamic>>>> world = {
    "India": {
      "Delhi": [
        {"shop": "A", "sales": 100},
        {"shop": "B", "sales": 200},
      ],
      "Mumbai": [
        {"shop": "X", "sales": 300},
      ],
    },
    "USA": {
      "NYC": [
        {"shop": "C", "sales": 500},
      ],
    },
  };

  List<String> country = world.keys.toList();
  for (int i = 0; i < country.length; i++) {
    var countries = country[i];
    print(country[i]);

    Map<String, List<Map<String, dynamic>>> states = world[countries]!;
    List<String> stateNames = states.keys.toList();
    for (int j = 0; j < stateNames.length; j++) {
      var state = stateNames[j];
      print(state);
    }
  }
}
