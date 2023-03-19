import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_v8/components/reels.dart';
import 'package:provider/provider.dart';

import '../view_model/reels_provider.dart';

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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text("Reels"),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined))
          ],
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [
            ...reelsProvider.reels
                .map((e) => Reels(
                      reel: e,
                    ))
                .toList()
          ],
        ));
  }
}
