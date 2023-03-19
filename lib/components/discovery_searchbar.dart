import 'package:flutter/material.dart';

class DiscoverSearchbar extends StatelessWidget {
  const DiscoverSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return searchBarWidget();
  }
}

Widget searchBarWidget() {
  TextEditingController _typedText = TextEditingController();
  return AppBar(
    backgroundColor: Colors.black,
    title: TextField(
      controller: _typedText,
      onChanged: (value) {
        print("value $value");
      },
      style: TextStyle(color: Colors.grey, fontSize: 16),
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              Icons.clear,
              color: Colors.grey,
            ),
            onPressed: () {
              _typedText.clear();
            },
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Color.fromARGB(255, 61, 57, 57),
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: Colors.black,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.black,
              ))),
    ),
  );
}
