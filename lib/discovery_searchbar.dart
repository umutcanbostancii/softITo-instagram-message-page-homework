import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homework_message/provider/page_provider.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatefulWidget with PreferredSizeWidget {
  MyWidget({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56);
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController _typedText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return TextField(
      onTap: () {
        pageProvider.setPressed(!pageProvider.getPressed);
      },
      controller: _typedText,
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
}
