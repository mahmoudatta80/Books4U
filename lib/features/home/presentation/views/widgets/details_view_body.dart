import 'package:flutter/material.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/presentation/views/widgets/book_details.dart';
import 'package:readify_app/features/home/presentation/views/widgets/custem_details_view_app_bar.dart';
import 'package:readify_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:readify_app/features/home/presentation/views/widgets/similar_books_list_view.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CustomDetailsViewAppBar(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .34,
              child: CustomBookImage(
                image: book.volumeInfo!.imageLinks?.thumbnail ?? '',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: BookDetails(
                book: book,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 16,
                start: 16,
                top: 16,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .15,
                child: SimilarBooksListView(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
