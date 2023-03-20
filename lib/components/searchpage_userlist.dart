import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPageUserList extends StatefulWidget {
  const SearchPageUserList({super.key});

  @override
  State<SearchPageUserList> createState() => _SearchPageUserListState();
}

class _SearchPageUserListState extends State<SearchPageUserList> {
  late List<Widget> toDoList = [
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
    RecenListWidget(),
  ];

  Faker faker = Faker();

  Row RecentRow() {
    return Row(
      children: [
        Text(
          "Recent",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
        ),
        Spacer(),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {},
          child: Text("See all"),
        )
      ],
    );
  }

  Row RecenListWidget() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(faker.image.image(random: true)))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "nickName",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 5,
              ),
              Text(faker.person.name())
            ],
          ),
        ),
      ],
    );
  }

  //  void addWidget() {

  //   toDoList.add(RecenListWidget());
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RecentRow(),
          ),
        ),

        
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                    title: toDoList[index],
                    trailing: IconButton(
                      splashColor: Colors.transparent,
                      icon: Icon(Icons.close),
                      onPressed: () {
                        toDoList.removeAt(index);
                        setState(() {});
                      },
                    ),
                  ),
              childCount: toDoList.length),
        ),
      ],
    );
  }
}


