import 'package:flutter/material.dart';
import 'package:readify_app/core/style/icon_broken.dart';
import 'package:readify_app/features/search/presentation/views/widgets/custom_text_form_feild.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

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
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: CustomTextFormField(),
        ),
      ],
    );
  }
}
