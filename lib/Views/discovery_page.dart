import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:homework_message/Widgets/widget_grid.dart';
import 'package:homework_message/discovery_searchbar.dart';
import 'package:homework_message/provider/page_provider.dart';
import 'package:provider/provider.dart';

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
        const Text(
          "Recent",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
        ),
        const Spacer(),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {},
          child: const Text("See all"),
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
              const Text(
                "nickName",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
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
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: pageProvider.getPressed == false ? MyWidget() : null,
        body: pageProvider.getPressed == true
            ? CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    title: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: MyWidget(),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) => ListTile(
                              title: toDoList[index],
                              trailing: IconButton(
                                splashColor: Colors.transparent,
                                icon: const Icon(Icons.close),
                                onPressed: () {
                                  toDoList.removeAt(index);
                                  setState(() {});
                                },
                              ),
                            ),
                        childCount: toDoList.length),
                  ),
                ],
              )
            : WidgetGrid(),
      ),
    );
  }
}
