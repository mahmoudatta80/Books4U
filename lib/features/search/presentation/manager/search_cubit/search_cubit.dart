import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/features/home/data/model/book_model/book_model.dart';
import 'package:readify_app/features/home/data/repos/home_repo.dart';
import 'package:readify_app/features/search/presentation/manager/search_cubit/search_states.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.homeRepo) : super(SearchStateInitial());
  final HomeRepo homeRepo;
  List<BookModel> books = [];
  List<BookModel> booksSearch = [];

  Future<void> fetchFeaturedBooks() async {
    emit(FetchBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FetchBooksFailure(failure.message)),
      (books) {
        for (BookModel book in books) {
          this.books.add(book);
          booksSearch.add(book);
        }
        emit(FetchBooksSuccess());
      },
    );
  }

  Future<void> fetchNewestBooks() async {
    emit(FetchBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(FetchBooksFailure(failure.message)),
      (books) {
        for (BookModel book in books) {
          this.books.add(book);
          booksSearch.add(book);
        }
        emit(FetchBooksSuccess());
      },
    );
  }

  searchForMovie(String value) {
    emit(FetchBooksLoading());
    books = [];
    if(value == '') {
      books = booksSearch;
    }else {
      for(BookModel book in booksSearch) {
        if(book.volumeInfo!.title!.toLowerCase().contains(value.toLowerCase())) {
          books.add(book);
        }
      }
    }
    emit(FetchBooksSuccess());
  }
}
