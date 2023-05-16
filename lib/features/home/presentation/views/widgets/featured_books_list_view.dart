import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/core/functions/navigate_to.dart';
import 'package:readify_app/core/widgets/custom_error_text.dart';
import 'package:readify_app/core/widgets/custom_loading.dart';
import 'package:readify_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:readify_app/features/home/presentation/manager/featured_books_cubit/featured_books_states.dart';
import 'package:readify_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:readify_app/features/home/presentation/views/widgets/featured_and_similar_list_loading.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  navigateToDetails(context: context, book: state.books[index],);
                },
                child: CustomBookImage(
                  image: state.books[index].volumeInfo!.imageLinks?.thumbnail??'',
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: CustomErrorText(
              errorMessage: state.errorMessage,
            ),
          );
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: const FeaturedAndSimilarListLoading(),
          );
        }
      },
    );
  }
}
