import 'package:flutter/material.dart';
import 'package:readify_app/core/widgets/custom_loading.dart';
import 'package:readify_app/features/home/presentation/views/widgets/newest_list_loading_details.dart';

class NewestListLoading extends StatelessWidget {
  const NewestListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomLoading(
      shrinkWrap: true,
      axis: Axis.vertical,
      builder: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: SizedBox(
          height: 115,
          child: Row(
            children: [
              AspectRatio(
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
              const SizedBox(
                width: 20,
              ),
              const NewestListLoadingDetails(),
            ],
          ),
        ),
      ),
      separated: const Divider(
        color: Color(0xff6DA5C0),
      ),
    );
  }
}

