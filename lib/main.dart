import 'package:flutter/material.dart';
import 'package:instagram_v8/view_model/home_page_view_mode.dart';
import 'package:instagram_v8/view_model/timeline_view_model.dart';
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
        ChangeNotifierProvider(create: (context) => TimeLineViewModel()),
        ChangeNotifierProvider(create: (context) => HomePageViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: const AppHome(),
      ),
    );
  }
}