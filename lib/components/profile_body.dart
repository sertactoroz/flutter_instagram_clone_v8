import 'package:flutter/material.dart';
import 'package:instagram_v8/components/widget_grid.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Column(
              children: [
                TabBar(controller: _tabController, tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.menu_book,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.view_module_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.newspaper_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person_pin_outlined,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  WidgetGrid(),
                  WidgetGrid(),
                  WidgetGrid(),
                  WidgetGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
