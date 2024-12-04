import 'package:bloc/bloc.dart';
import 'package:ebookapp/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubitCubit() : super(FeaturedBooksCubitInitial());
}
