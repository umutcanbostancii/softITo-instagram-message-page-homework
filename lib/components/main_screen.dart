import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homework_message/Views/reels_page.dart';
import 'package:homework_message/components/bottom_appBar.dart';
import 'package:homework_message/components/profile-page.dart';
import 'package:homework_message/components/timeline-post.dart';
import 'package:homework_message/message-page/message-page.dart';
import 'package:homework_message/provider/page_provider.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    final List<Widget> pages = [
      const TimelinePostWidget(),
      const Placeholder(),
      const Placeholder(),
      const ReelsPage(),
      const ProfilePage(),
    ];
    return Scaffold(
      body: pages[pageProvider.getPage],
      bottomNavigationBar: const BottomAppBarWidget(),
    );
  }
}
