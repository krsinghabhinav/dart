void main() {
  // bool isShow = false;

  // isShow == true ? true : false;

  // print(isShow);
  checkUI check = checkUI(true);

  check.show();
}

class checkUI {
  bool isshow = false;

  checkUI(this.isshow);

  void show() {
    isshow ? print("says yes") : print("syas false");
  }
}
