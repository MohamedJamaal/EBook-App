import 'package:dartz/dartz.dart';
import 'package:ebookapp/core/errors/failure.dart';
import 'package:ebookapp/features/home/data/models/book_model/book_model.dart';
import 'package:ebookapp/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
