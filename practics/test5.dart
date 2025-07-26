void main() {
  String? selectedCity = null;
  String enteredCity = "Delhi";
  bool isDefaultSelected = false;

  Map<String, Object> selectCity = {
    "final_city_name": selectedCity != null
        ? selectedCity
        : enteredCity.isNotEmpty
            ? enteredCity
            : isDefaultSelected
                ? "defaultCity"
                : "unknowncity",
  };

  print("Selected City: ${selectCity["final_city_name"]}");
}
