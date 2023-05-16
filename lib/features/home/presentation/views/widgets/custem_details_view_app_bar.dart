import 'package:flutter/material.dart';
import 'package:readify_app/core/style/icon_broken.dart';

class CustomDetailsViewAppBar extends StatelessWidget {
  const CustomDetailsViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            IconBroken.Arrow___Left_2,
            size: 22,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {

          },
          icon: const Icon(
            IconBroken.Bookmark,
            size: 22,
          ),
        ),
      ],
    );
  }
}
