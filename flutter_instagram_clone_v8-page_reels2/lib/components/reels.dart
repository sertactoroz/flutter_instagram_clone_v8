import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_v8/view_model/reels_provider.dart';

import '../models/reels_model.dart';

class Reels extends StatelessWidget {
  final ReelsModel reel;
  const Reels({super.key, required this.reel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            reel.media,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Spacer(),
            Row(
              children: [
                const Spacer(),
                Column(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 22,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(reel.likeCount.toString()),
                  ],
                ),
                const SizedBox(
                  width: 9,
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                const Spacer(),
                Column(
                  children: [
                    Icon(
                      Icons.comment_rounded,
                      size: 22,
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(reel.commentCount.toString()),
                  ],
                ),
                const SizedBox(
                  width: 9,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.amber,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(reel.userAvatar),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(reel.firstName),
                const SizedBox(
                  width: 12,
                ),
                SizedBox(
                    width: 77,
                    height: 20,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Follow"))),
                const Spacer(),
                const Icon(
                  Icons.send,
                ),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(reel.content),
                Spacer(),
                Icon(Icons.more_vert),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Stack(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 27),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 9,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 9,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1440508319978-8b67875e39d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2334&q=80'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 9,
                        child: CircleAvatar(
                          radius: 8,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Liked by Samet and 293493 other people ",
                  style: TextStyle(fontSize: 9),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 5,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
              width: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 9,
                ),
                const Icon(
                  Icons.music_note,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Irem-Hayalet Sevgilim",
                  style: TextStyle(fontSize: 10),
                ),
                const SizedBox(
                  width: 2,
                ),
                const Text(
                  ". Original Audio",
                  style: TextStyle(fontSize: 9),
                ),
                const Spacer(),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        "https://img.internethaber.com/rcman/Cw480h270q95gc/storage/files/images/2020/12/09/ffff-lXUV_cover.jpg",
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                )
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ],
    );
  }
}
