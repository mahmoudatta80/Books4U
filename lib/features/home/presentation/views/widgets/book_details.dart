import 'package:flutter/material.dart';
import 'package:readify_app/constant.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:readify_app/features/home/presentation/views/widgets/book_rating.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          book.volumeInfo!.title!,
          style: const TextStyle(
            fontSize: 24,
            fontFamily: gsf,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          book.volumeInfo!.authors![0],
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white60,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10,
        ),
        BookRating(
          volumeInfo: book.volumeInfo!,
        ),
        const SizedBox(height: 30),
        BookAction(
          url: book.volumeInfo!.previewLink!,
        ),
      ],
    );
  }
}
