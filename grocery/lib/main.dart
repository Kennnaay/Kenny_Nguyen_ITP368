import "dart:io";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:path_provider/path_provider.dart";

void main() // FS
{
  runApp(FileStuff());
}

class FileStuff extends StatelessWidget {
  FileStuff({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "file stuff - barrett",
      home: FileStuffHome(),
    );
  }
}

class FileStuffHome extends StatelessWidget {
  FileStuffHome({super.key});

  @override
  Widget build(BuildContext context) {
    writeFile();
    String contents = readFile();
    return Scaffold(
      appBar: AppBar(title: Text("Kenny's Grocery List")),
      body: Text(contents),
    );
  }

  // function to write to grocery list
  void writeFile() {
    String myStuff = "C:\\Users\\tizeo\\OneDrive\\Desktop\\368\\TextFiles";
    String filePath = "$myStuff\\grocery.txt";
    File fodder = File(filePath);

    // ADD MORE OF THESE STATEMENTS TO ADD TO GROCERY LIST
    fodder.writeAsStringSync("Tomato \n", mode: FileMode.append);
    fodder.writeAsStringSync("Rice \n", mode: FileMode.append);
    fodder.writeAsStringSync("Cheese \n", mode: FileMode.append);
    fodder.writeAsStringSync("Chicken \n", mode: FileMode.append);
  }

  // function to read from grocery list
  String readFile() {
    String filePath =
        r"C:\Users\tizeo\OneDrive\Desktop\368\TextFiles\grocery.txt";
    File fodder = File(filePath);
    String contents = fodder.readAsStringSync();
    print(contents);
    return contents;
  }
}
