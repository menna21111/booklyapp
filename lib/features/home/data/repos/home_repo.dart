import 'package:booklyapp/features/home/data/models/bookmodel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/eror/failure.dart';

abstract class HomeRepo {//rep patteran depond on abstract class ,create method without imp becaus when share it work
 Future <Either<Failure,List<BookModel>>> fetchNewsetBooks();
 Future <Either<Failure,List<BookModel>>>  fetchFeaturedBooks();
 Future <Either<Failure,List<BookModel>>>  fetchSimilerFeaturedBooks({required String category});
}
