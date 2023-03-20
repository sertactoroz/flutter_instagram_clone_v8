import 'package:flutter/material.dart';
import 'package:instagram_v8/view_model/discovery_view_model.dart';
import 'package:instagram_v8/view_model/reels_provider.dart';
import 'package:instagram_v8/view_model/timeline_page_view_model.dart';
import 'package:provider/provider.dart';
import 'app_init.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TimelinePageViewModel()),
        ChangeNotifierProvider(create: (context) => ReelsProvider()),
        ChangeNotifierProvider(create: (context) => DiscoveryViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        themeMode: ThemeMode.dark,
        home: const AppHome(),
      ),
    );
  }
}
