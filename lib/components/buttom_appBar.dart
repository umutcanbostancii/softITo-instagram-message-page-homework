import 'package:flutter/material.dart';
import 'package:homework_message/provider/page_provider.dart';
import 'package:provider/provider.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return BottomAppBar(
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                pageProvider.setPage(0);
              },
              icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {
                pageProvider.setPage(1);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                pageProvider.setPage(2);
              },
              icon: const Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () {
                pageProvider.setPage(3);
              },
              icon: const Icon(Icons.video_library_outlined)),
          IconButton(
              onPressed: () {
                pageProvider.setPage(4);
              },
              icon: const Icon(Icons.person_pin_outlined)),
        ],
      ),
    );
  }
}
