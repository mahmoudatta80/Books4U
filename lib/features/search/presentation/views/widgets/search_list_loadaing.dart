import 'package:flutter/material.dart';
import 'package:readify_app/core/widgets/custom_loading.dart';

class SearchListLoading extends StatelessWidget {
  const SearchListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomLoading(
      axis: Axis.vertical,
      builder: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.white12,
        ),
        title: Container(
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16,),
            color: Colors.white12,
          ),
        ),
        subtitle: Container(
          height: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16,),
            color: Colors.white12,
          ),
        ),
      ),
      shrinkWrap: false,
      separated: const SizedBox(
        height: 0,
      ),
    );
  }
}
