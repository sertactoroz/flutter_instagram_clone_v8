import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:instagram_v8/view/timeline_page.dart';
import 'package:instagram_v8/view_model/timeline_page_view_model.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      splash: "assets/icon.png",
      backgroundColor: Colors.black,
      screenFunction: () async {
        await context.read<TimelinePageViewModel>().getListData();
        return const TimelinePage();
      },
      curve: Curves.easeInOutBack,
      splashIconSize: 250,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
