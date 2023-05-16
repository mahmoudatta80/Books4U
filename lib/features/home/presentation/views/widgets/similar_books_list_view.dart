import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/core/functions/navigate_to.dart';
import 'package:readify_app/core/widgets/custom_error_text.dart';
import 'package:readify_app/core/widgets/custom_loading.dart';
import 'package:readify_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:readify_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';
import 'package:readify_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:readify_app/features/home/presentation/views/widgets/featured_and_similar_list_loading.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (BuildContext context, state) {
        if (state is SimilarBooksSuccess) {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                navigateToDetails(
                  context: context,
                  book: state.books[index],
                );
              },
              child: CustomBookImage(
                image:
                    state.books[index].volumeInfo!.imageLinks?.thumbnail ?? '',
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorText(
            errorMessage: state.errorMessage,
          );
        }else {
          return const FeaturedAndSimilarListLoading();
        }
      },
    );
  }
}
