// TODO Implement this library.// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final Function onPressed;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    // required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 25),
      child: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {},
          child: Image.asset(
            icon,
            width: 26,
            height: 26,
          ),
        ),
      ),
    );
  }
}
