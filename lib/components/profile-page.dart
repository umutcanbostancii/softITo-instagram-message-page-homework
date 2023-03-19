import 'package:flutter/material.dart';
import 'package:homework_message/components/bottom-navbar.dart';
import 'package:homework_message/components/profile_grid.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "87",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text('Post')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "824",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text('Following')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0, right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "1526",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text('Follower')
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Umutcan Bostanci",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 15.9),
                child: Text(
                  "City/Istanbul",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 15.9),
                child: Text(
                  "Flutter/Swift",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 15.9),
                child: Text(
                  "Photographer",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          SizedBox(
            height: 30,
            width: 370,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Following",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "Message",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Center(
                        child: Icon(
                          Icons.person_off_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              TabBar(controller: _tabController, tabs: const [
                Tab(
                  icon: Icon(
                    Icons.menu_book,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.view_module_rounded),
                ),
                Tab(
                  icon: Icon(Icons.newspaper_outlined),
                ),
                Tab(
                  icon: Icon(Icons.person_pin_outlined),
                ),
              ]),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                ProfileGridView(),
                ProfileGridView(),
                ProfileGridView(),
                ProfileGridView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
