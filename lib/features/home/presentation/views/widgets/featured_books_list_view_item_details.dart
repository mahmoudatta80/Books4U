import 'package:flutter/material.dart';
import 'package:readify_app/constant.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/presentation/views/widgets/book_rating.dart';

class FeaturedBooksListViewItemDetails extends StatelessWidget {
  const FeaturedBooksListViewItemDetails({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          book.volumeInfo!.title!,
          style: const TextStyle(
            fontSize: 24,
            fontFamily: gsf,
            letterSpacing: 1.2,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          book.volumeInfo!.authors![0],
          style:const TextStyle(
            fontSize: 16,
            color: Colors.white60,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              'Free',
              style: TextStyle(
                fontSize: 20,
                fontFamily: bold,
              ),
            ),
            const Spacer(),
            BookRating(volumeInfo: book.volumeInfo!),
          ],
        ),
      ],
    );
  }
}
