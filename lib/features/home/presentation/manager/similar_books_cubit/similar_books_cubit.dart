import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/features/home/data/repos/home_repo.dart';
import 'package:readify_app/features/home/presentation/manager/similar_books_cubit/similar_books_states.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks(final String categories) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(categories);
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.message)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
