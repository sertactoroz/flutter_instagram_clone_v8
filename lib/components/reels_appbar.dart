import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReelsAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ReelsAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Reels"),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined))
      ],
    );
  }
}
