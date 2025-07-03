mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

class FileManager with Logger {
  void openFile(String filename) {
    log("Opening file: $filename");
    print("$filename opened.");
  }
}

void main() {
  FileManager fm = FileManager();
  fm.openFile("myfile.txt");
}
