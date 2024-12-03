import 'package:dartz/dartz.dart';
import 'package:ebookapp/core/errors/failure.dart';
import 'package:ebookapp/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
