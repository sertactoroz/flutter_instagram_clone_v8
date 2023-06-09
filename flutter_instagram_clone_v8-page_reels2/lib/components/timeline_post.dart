import 'package:flutter/material.dart';
import 'package:instagram_v8/components/timeline_stories.dart';
import 'package:instagram_v8/models/post_model.dart';
import 'package:instagram_v8/view_model/timeline_page_view_model.dart';
import 'package:provider/provider.dart';

class TimelinePostWidget extends StatefulWidget implements PreferredSizeWidget {
  const TimelinePostWidget({Key? key}) : super(key: key);

  @override
  _TimelinePostWidget createState() => _TimelinePostWidget();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _TimelinePostWidget extends State<TimelinePostWidget> {
  @override
  Widget build(BuildContext context) {
    TimelinePageViewModel timelinePageViewModel =
        Provider.of<TimelinePageViewModel>(context);
    // return CustomScrollView(
    //   slivers: <Widget>[
    //     SliverToBoxAdapter(child: TimelineStories()),
    //     SliverList(
    //       delegate: SliverChildBuilderDelegate(
    //         (BuildContext context, int index) {
    //           return PostCard();
    //         },
    //         childCount: 10,
    //       ),
    //     ),
    //   ],
    // );

    return ListView(
      shrinkWrap: true,
      children: [
        ...timelinePageViewModel.posts.map((e) => PostCard(posts: e)).toList()
      ],
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({Key? key, required this.posts}) : super(key: key);
  final PostModel posts;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(posts.userAvatar),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                textDirection: TextDirection.ltr,
                children: [
                  Text(
                    posts.username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    posts.content,
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.white),
                  ),
                ],
              ),
              const Spacer(
                flex: 5,
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/3dots.png',
                  width: 22,
                  height: 22,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.network(
            posts.media,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              IconButtonCreator(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/message.png',
                  width: 22,
                  height: 22,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/send.png',
                  width: 22,
                  height: 22,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/2dots.png',
                  width: 20,
                  height: 20,
                ),
              ),
              const Spacer(),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/save.png',
                  width: 22,
                  height: 22,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 27),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1558898479-33c0057a5d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1440508319978-8b67875e39d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2334&q=80'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 12,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text(
                      'Liked by johndoe and 10 others',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Text(
                'johndoe',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 5),
              Text(
                'This is a beautiful place',
              ),
            ],
          ),
        ],
      ),
    );
  }

  IconButton IconButtonCreator() {
    List iconList = [];
    return IconButton(
      onPressed: () {},
      icon: Image.asset(
        'assets/icons/notifications.png',
        width: 22,
        height: 22,
      ),
    );
  }
}
