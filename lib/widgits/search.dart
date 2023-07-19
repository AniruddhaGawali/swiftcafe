import 'package:flutter/material.dart';

class PersonalSearchBar extends StatelessWidget {
  const PersonalSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white.withOpacity(.8),
      ),
      child: Row(children: [
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.search,
          color: Colors.black.withOpacity(.5),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "Search favorite Beverages",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.black.withOpacity(.5), fontSize: 15),
        ),
        const Spacer(),
        Icon(
          Icons.filter_alt_outlined,
          color: Colors.black.withOpacity(.5),
        ),
        const SizedBox(
          width: 10,
        ),
      ]),
    );
  }
}
