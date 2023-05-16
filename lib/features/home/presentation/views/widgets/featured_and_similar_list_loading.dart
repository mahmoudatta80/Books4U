import 'package:flutter/material.dart';
import 'package:readify_app/core/widgets/custom_loading.dart';

class FeaturedAndSimilarListLoading extends StatelessWidget {
  const FeaturedAndSimilarListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomLoading(
      shrinkWrap: false,
      axis: Axis.horizontal,
      builder: AspectRatio(
        aspectRatio: 2.6/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16,
            ),
            color: Colors.white12,
          ),
        ),
      ),
      separated: const SizedBox(
        width: 10,
      ),
    );
  }
}
