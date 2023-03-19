import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

Widget searchBarWidget() {
  TextEditingController _typedText = TextEditingController();
  return TextField(
    controller: _typedText,
    onChanged: (value) {
      print("value $value");
    },
    style: const TextStyle(color: Colors.grey, fontSize: 16),
    decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colors.grey,
          ),
          onPressed: () {
            _typedText.clear();
          },
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        hintText: "Search",
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color.fromARGB(255, 61, 57, 57),
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.black,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.black,
            ))),
  );
}
