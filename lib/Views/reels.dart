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
                height: 400,
              ),
              Row(
                children: [
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(
                        Icons.favorite_outline,
                        size: 20,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text("109"),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Spacer(),
                  Column(
                    children: const [
                      Icon(
                        Icons.comment_rounded,
                        size: 20,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text("209"),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80"),
                    radius: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text("data"),
                  const SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(onPressed: () {}, child: const Text("Follow")),
                  const Spacer(),
                  const Icon(Icons.send),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  Text("data"),
                  Spacer(),
                  Icon(Icons.more_vert),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1623039497055-e79fcaebd4ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"),
                    radius: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("name"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("name"),
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: MyStatefulWidget(),
    );
  }
}
