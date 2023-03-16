import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/Story.png",
                color: Colors.white,
                height: 27,
                width: 27,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.white,
            iconSize: 32,
          )
        ],
        backgroundColor: Colors.black26,
        leading: const Padding(
          padding: EdgeInsets.only(
            left: 8.0,
            top: 20.0,
          ),
          child: Text(
            "Profile name",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        leadingWidth: 200,
      ),
      body: Row(
        children: [
          Stack(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 51,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 49,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"),
                      radius: 47,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
