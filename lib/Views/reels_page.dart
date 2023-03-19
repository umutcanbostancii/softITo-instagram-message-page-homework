import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homework_message/Views/reels.dart';
import 'package:homework_message/provider/reels_provider.dart';
import 'package:provider/provider.dart';

import '../components/bottom-navbar.dart';

class ReelsPage extends StatefulWidget {
  const ReelsPage({super.key});

  @override
  State<ReelsPage> createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    ReelsProvider reelsProvider = Provider.of<ReelsProvider>(context);
    reelsProvider.getReelsData();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reels"),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined))
        ],
      ),
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: [
          ...reelsProvider.reels
              .map((e) => Reels(
                    reel: e,
                  ))
              .toList()
        ],
      )),
      bottomNavigationBar: const MyStatefulWidget(),
    );
  }
}
