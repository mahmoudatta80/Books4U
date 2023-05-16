import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:readify_app/core/utils/service_locator.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:readify_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:readify_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:readify_app/features/home/presentation/views/details_view.dart';
import 'package:readify_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:readify_app/features/search/presentation/views/search_view.dart';

navigateTo({required BuildContext context, required Widget widget}) {
  Navigator.of(context).push(
    PageTransition(
      child: widget,
      type: PageTransitionType.fade,
    ),
  );
}

navigateToDetails({required BuildContext context, required BookModel book}) {
  Navigator.of(context).push(
    PageTransition(
      child: BlocProvider(
        create: (BuildContext context) => SimilarBooksCubit(
          getIt.get<HomeRepoImplementation>(),
        )..fetchSimilarBooks(book.volumeInfo!.categories!.first),
        child: DetailsView(
          book: book,
        ),
      ),
      type: PageTransitionType.bottomToTop,
    ),
  );
}

navigateToSearch({required BuildContext context}) {
  Navigator.of(context).push(
    PageTransition(
      child: BlocProvider(
        create: (BuildContext context) => SearchCubit(
          getIt.get<HomeRepoImplementation>(),
        )..fetchFeaturedBooks()..fetchNewestBooks(),
        child: const SearchView(),
      ),
      type: PageTransitionType.rightToLeft,
    ),
  );
}
