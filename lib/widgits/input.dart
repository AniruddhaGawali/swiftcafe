import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String placeholder;
  const InputField({Key? key, required this.placeholder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors
                .white60, // You can set the color of the bottom border here
            width: 2.0, // You can adjust the width of the bottom border here
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
          border: InputBorder.none, // Remove the default TextField border
        ),
      ),
    );
  }
}
