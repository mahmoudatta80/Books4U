import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/core/widgets/custom_error_text.dart';
import 'package:readify_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:readify_app/features/search/presentation/manager/search_cubit/search_states.dart';
import 'package:readify_app/features/search/presentation/views/widgets/search_list_loadaing.dart';
import 'package:readify_app/features/search/presentation/views/widgets/search_list_view_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchCubit, SearchStates>(
        builder: (BuildContext context, state) {
          if (state is FetchBooksSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: BlocProvider.of<SearchCubit>(context).books.length,
              itemBuilder: (context, index) => SearchListViewItem(
                book: BlocProvider.of<SearchCubit>(context).books[index],
              ),
            );
          } else if (state is FetchBooksFailure) {
            return CustomErrorText(
              errorMessage: state.message,
            );
          }else {
            return const SearchListLoading();
          }
        },
      ),
    );
  }
}
