import 'package:flutter/material.dart';
import 'package:readify_app/core/functions/navigate_to.dart';
import 'package:readify_app/core/style/icon_broken.dart';
import 'package:readify_app/features/search/presentation/views/search_view.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 24,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            navigateToSearch(
              context: context,
            );
          },
          icon: const Icon(
            IconBroken.Search,
            size: 22,
          ),
        ),
      ],
    );
  }
}
