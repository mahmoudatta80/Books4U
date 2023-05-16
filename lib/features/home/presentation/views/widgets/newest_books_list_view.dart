import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/core/functions/navigate_to.dart';
import 'package:readify_app/core/widgets/custom_error_text.dart';
import 'package:readify_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:readify_app/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';
import 'package:readify_app/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:readify_app/features/home/presentation/views/widgets/newest_list_loading.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (BuildContext context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                navigateToDetails(context: context, book: state.books[index],);
              },
              child: NewestBooksListViewItem(
                book: state.books[index],
              ),
            ),
            separatorBuilder: (context, index) => const Divider(
              color: Color(0xff6DA5C0),
            ),
            itemCount: state.books.length,
          );
        } else if (state is NewestBooksFailure) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .17,
              ),
              CustomErrorText(
                errorMessage: state.errorMessage,
              ),
            ],
          );
        } else {
          return const NewestListLoading();
        }
      },
    );
  }
}
