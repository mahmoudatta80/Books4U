import 'package:flutter/material.dart';
import 'package:readify_app/features/home/data/model/book_model/volume_info.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, required this.volumeInfo}) : super(key: key);
  final VolumeInfo volumeInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 22,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          volumeInfo.averageRating?.toString()??'0',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '(${volumeInfo.ratingsCount?.toString()??'0'})',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
