import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/features/home/data/repos/home_repo.dart';
import 'package:readify_app/features/home/presentation/manager/newest_books_cubit/newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.message)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
