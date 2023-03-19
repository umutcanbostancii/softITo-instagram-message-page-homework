import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Stack(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 3.0, right: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 18,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1677835500542-50bd76a26bc6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Profile Name",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "username",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const SizedBox(
            width: 165,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_call_rounded,
                size: 32,
              ))
        ],
      ),
    );
  }
}
