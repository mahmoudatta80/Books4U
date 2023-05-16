import 'package:flutter/material.dart';
import 'package:readify_app/core/functions/navigate_to.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        navigateToDetails(
          context: context,
          book: book,
        );
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          book.volumeInfo!.imageLinks?.smallThumbnail ?? '',
        ),
      ),
      title: Text(
        book.volumeInfo!.title!,
      ),
      subtitle: Text(
        book.volumeInfo!.authors!.first,
      ),
    );
  }
}
