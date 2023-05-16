import 'package:flutter/material.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/presentation/views/widgets/featured_books_list_view_item_details.dart';
import 'package:readify_app/features/home/presentation/views/widgets/custom_book_image.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({Key? key, required this.book})
      : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: SizedBox(
        height: 115,
        child: Row(
          children: [
            CustomBookImage(
              image: book.volumeInfo!.imageLinks?.thumbnail??'',
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: FeaturedBooksListViewItemDetails(
                book: book,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
