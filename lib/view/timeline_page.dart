import 'package:flutter/material.dart';
import 'package:instagram_v8/components/timeline_post.dart';
import 'package:instagram_v8/components/timeline_stories.dart';
import 'package:provider/provider.dart';
import '../components/bottom_navbar.dart';
import '../components/discovery_appbar.dart';
import '../components/timeline_appbar.dart';
import '../view_model/timeline_page_view_model.dart';
import 'discovery_page.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: screen,
      backgroundColor: Colors.black,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }

  PreferredSizeWidget? get appbar {
    switch (context.watch<TimelinePageViewModel>().page) {
      case 0:
        return TimelineAppbar();
      case 1:
        return const DiscoveryAppbar();
      default:
        return null;
    }
  }

  Widget get screen {
    switch (context.watch<TimelinePageViewModel>().page) {
      case 0:
        return TimelinePostWidget();
      // case 1:
      //   return DiscoveryPage();
      // case 2:
      //   return const PostsPage();
      // case 3:      // case 4:
      //   return const ProfilePage();

      default:
        return Container();
    }
  }
}
