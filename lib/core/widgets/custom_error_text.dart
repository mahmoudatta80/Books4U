import 'package:flutter/material.dart';
import 'package:readify_app/core/style/icon_broken.dart';

class CustomErrorText extends StatelessWidget {
  const CustomErrorText({Key? key, required this.errorMessage}) : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white60,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Icon(
            IconBroken.Info_Circle,
            color: Colors.white60,
          ),
        ],
      ),
    );
  }
}
