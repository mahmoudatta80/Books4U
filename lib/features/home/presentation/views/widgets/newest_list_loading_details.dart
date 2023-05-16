import 'package:flutter/material.dart';

class NewestListLoadingDetails extends StatelessWidget {
  const NewestListLoadingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16,),
              color: Colors.white12,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 20,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16,),
              color: Colors.white12,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16,),
              color: Colors.white12,
            ),
          ),
        ],
      ),
    );
  }
}