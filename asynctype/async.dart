void main() async{
  print("hii abhinav singh");
  print(await getName());
}

Future<String> getName() async {
  await Future.delayed(Duration(seconds: 2));
  return "Abhinav";
}
