import 'package:flutter/material.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/presentation/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(
        book: book,
      ),
    );
  }
}
