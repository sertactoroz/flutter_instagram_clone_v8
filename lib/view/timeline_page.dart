import 'package:flutter/material.dart';
import 'package:instagram_v8/components/reels_page.dart';
import 'package:instagram_v8/components/timeline_post.dart';
import 'package:provider/provider.dart';
import '../components/bottom_navbar.dart';
import '../components/discovery_searchbar.dart';
import '../components/profile_appbar.dart';
import '../components/profile_body.dart';
import '../components/timeline_appbar.dart';
import '../components/widget_grid.dart';
import '../view_model/timeline_page_view_model.dart';

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
        return PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: TimelineAppbar(),
        );

      case 1:
        return PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: DiscoverSearchbar(),
        );
      // case 3:
      //   return PreferredSize(
      //     preferredSize: Size.fromHeight(20),
      //     child: ReelsAppbar(),
      //   );
      case 4:
        return PreferredSize(
          preferredSize: Size.fromHeight(280),
          child: ProfilePage(),
        );
      // case 3:
      //   return ReelsAppbar();

      default:
        return null;
    }
  }

  Widget get screen {
    switch (context.watch<TimelinePageViewModel>().page) {
      case 0:
        return const TimelinePostWidget();
      case 1:
        return const WidgetGrid();
      // case 2:
      //   return ReelsBody();
      case 3:
        return const ReelsPage();
      case 4:
        return const ProfileBody();
      default:
        return Container();
    }
  }
}
