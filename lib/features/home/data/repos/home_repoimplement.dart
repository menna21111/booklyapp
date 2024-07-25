import 'package:booklyapp/core/eror/failure.dart';
import 'package:booklyapp/core/utls/apiservice.dart';
import 'package:booklyapp/features/home/data/models/bookmodel.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoimplement implements HomeRepo {
  final Apiservice apiservice;

  HomeRepoimplement( this.apiservice);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiservice.get(
          endpoint:
              'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }return left(ServerFailure(e.toString()));
    }
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiservice.get(
          endpoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }return left(ServerFailure(e.toString()));
    }
  }


}
