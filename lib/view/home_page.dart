import 'package:flutter/material.dart';
import 'package:instagram_v8/view/timeline_page.dart';
import 'package:provider/provider.dart';
import '../components/bottom_navbar.dart';
import '../components/discovery_appbar.dart';
import '../components/timeline_appbar.dart';
import '../view_model/home_page_view_mode.dart';
import 'discovery_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return const TimelineAppbar();
      case 1:
        return const DiscoveryAppbar();
      default:
        return null;
    }
  }

  Widget get screen {
    switch (context.watch<HomePageViewModel>().page) {
      case 0:
        return const TimelinePage();
      case 1:
        return const DiscoveryPage();
      // case 2:
      //   return const PostsPage();
      // case 3:
      //   return const ReelsPage();
      // case 4:
      //   return const ProfilePage();

      default:
        return Container();
    }
  }
}
