import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homework_message/components/bottom-navbar.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reels"),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined))
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 390,
              ),
              Row(
                children: [
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(
                        Icons.favorite_outline,
                        size: 22,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("109"),
                    ],
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                ],
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(
                        Icons.comment_rounded,
                        size: 22,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text("209"),
                    ],
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Stack(
                    children: const [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text("Profile Name"),
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                      width: 77,
                      height: 20,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text("Follow"))),
                  const Spacer(),
                  const Icon(
                    Icons.send,
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  Text("Content Comment"),
                  Spacer(),
                  Icon(Icons.more_vert),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Stack(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 27),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 9,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 9,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1440508319978-8b67875e39d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2334&q=80'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 9,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Liked by Samet and 293493 other people ",
                    style: TextStyle(fontSize: 9),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
                width: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 9,
                  ),
                  Icon(
                    Icons.music_note,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Irem-Hayalet Sevgilim",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    ". Original Audio",
                    style: TextStyle(fontSize: 9),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          "https://img.internethaber.com/rcman/Cw480h270q95gc/storage/files/images/2020/12/09/ffff-lXUV_cover.jpg",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  )
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: const MyStatefulWidget(),
    );
  }
}
