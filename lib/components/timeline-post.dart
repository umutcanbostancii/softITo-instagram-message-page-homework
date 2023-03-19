import 'package:flutter/material.dart';
import 'package:homework_message/message-page/message-page.dart';

class TimelinePostWidget extends StatefulWidget {
  const TimelinePostWidget({Key? key}) : super(key: key);

  @override
  _TimelinePostWidget createState() => _TimelinePostWidget();
}

class _TimelinePostWidget extends State<TimelinePostWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.network(
          "https://thepracticaldev.s3.amazonaws.com/i/9dgus6e6o80pv1gx8y7t.png",
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 27,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessagePage()));
              },
              icon: const Icon(
                Icons.send,
                size: 27,
              )),
        ],
        leadingWidth: 150,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const PostCard();
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'johndoe',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(
                flex: 5,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.network(
            'https://images.unsplash.com/photo-1672942591839-c3926291e04c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.bookmark_border),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 27),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1440508319978-8b67875e39d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2334&q=80'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 55),
                    child: Text(
                      'Liked by johndoe and 10 others',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text(
                'johndoe',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Text(
                'This is a beautiful place',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
