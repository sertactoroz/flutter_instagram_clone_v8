import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/discovery_view_model.dart';

class DiscoverySearchBar extends StatelessWidget
    implements PreferredSizeWidget {
  const DiscoverySearchBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(65);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            SizedBox(
              height: 40,
              child: AnimatedContainer(
                width: MediaQuery.of(context).size.width *
                    (context.watch<DiscoveryViewModel>().searchView
                        ? 0.75
                        : 0.9),
                duration: const Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white12,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: TextField(
                    onTap: () {
                      context.read<DiscoveryViewModel>().changeSearchView();
                    },
                    style: const TextStyle(color: Colors.white70),
                    cursorColor: Colors.white70,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Opacity(
                            opacity: 0.7,
                            child: Image.asset(
                              "assets/icons/search.png",
                            ),
                          ),
                        )
                        // contentPadding:
                        //     EdgeInsets.only(left: 5),
                        ),
                  ),
                ),
              ),
            ),
            if (context.watch<DiscoveryViewModel>().cancelView) const Spacer(),
            if (context.watch<DiscoveryViewModel>().cancelView)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    context.read<DiscoveryViewModel>().changeSearchView();
                  },
                  child: const Text(
                    "Cancel",
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              )
          ],
        ));
  }
}
