import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MessageListView extends StatelessWidget {
  const MessageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(padding: const EdgeInsets.all(16), children: <Widget>[
          SizedBox(
            child: Row(
              children: [
                Stack(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 1, top: 2),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1621784562877-e971f1f79f47?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80")),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: const [
                          Text(
                            "Sender Name",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Sent Just Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                              )),
                        ],
                      )),
                ),
              ],
            ),
            
          ),
        ]),
      ),
    );
  }
}
