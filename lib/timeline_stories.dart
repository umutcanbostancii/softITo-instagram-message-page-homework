import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimeLineStories extends StatefulWidget {
  const TimeLineStories({super.key});

  @override
  State<TimeLineStories> createState() => _TimeLineStoriesState();
}

class _TimeLineStoriesState extends State<TimeLineStories> {
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _storyItemFirst(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
          _storyItem(faker.person.firstName(), faker.image.image()),
        ],
      ),
    );
  }
}

Widget _storyItem(String name, String image) {
  return Stack(children: <Widget>[
    Column(
      children: [
        Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple,
                Colors.pink,
                Colors.orange,
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(3),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          child: Text(
            "views",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    ),
    Positioned(
      left: 10,
      child: Container(
        child: Center(
          child: Text(
            "bored",
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
        width: 60,
        height: 25,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      ),
    )
  ]);
}

Widget _storyItemFirst(String name, String image) {
  return Stack(children: <Widget>[
    Column(
      children: [
        Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.purple,
                Colors.pink,
                Colors.orange,
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(3),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          child: Text(
            "Leave a note",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        )
      ],
    ),
    Positioned(
      left: 40,
      child: Container(
        alignment: Alignment.center,
        child: FittedBox(
          child: IconButton(
            icon: Icon(
              Icons.add,
              size: 35,
            ),
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {},
          ),
        ),
        width: 30,
        height: 30,
        decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      ),
    )
  ]);
}
