import 'package:flutter/material.dart';
import 'package:homework_message/message-page/message_listview.dart';
import 'package:homework_message/timeline_stories.dart';

TextEditingController _typedText = TextEditingController();

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text("Profile Name"),
          ],
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                controller: _typedText,
                onChanged: (value) {},
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
                          color: Colors.black54,
                        ))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TimeLineStories(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Messages",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            Flexible(child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const  [
                MessageListView(),
                MessageListView(),
                MessageListView(),
                MessageListView(),
                MessageListView(),
                MessageListView(),
                MessageListView(),
                MessageListView(),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
