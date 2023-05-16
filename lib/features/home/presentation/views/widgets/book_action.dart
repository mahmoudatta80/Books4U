import 'package:flutter/material.dart';
import 'package:readify_app/core/functions/navigate_to.dart';
import 'package:readify_app/core/widgets/custom_button.dart';
import 'package:readify_app/core/widgets/web_view.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              borderRadius: const BorderRadiusDirectional.only(
                topStart: Radius.circular(
                  16,
                ),
                bottomStart: Radius.circular(
                  16,
                ),
              ),
              onPressed: () {},
              text: 'Free',
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.deepOrangeAccent,
              borderRadius: const BorderRadiusDirectional.only(
                topEnd: Radius.circular(
                  16,
                ),
                bottomEnd: Radius.circular(
                  16,
                ),
              ),
              onPressed: () {
                navigateTo(
                  context: context,
                  widget: WebView(url: url),
                );
              },
              text: 'Read Now',
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
