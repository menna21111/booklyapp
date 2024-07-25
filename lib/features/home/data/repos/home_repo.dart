import 'package:booklyapp/features/home/data/models/bookmodel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/eror/failure.dart';

abstract class HomeRepo {
 Future <Either<Failure,List<BookModel>>> fetchNewsetBooks();
  Future <Either<Failure,List<BookModel>>>  fetchFeaturedBooks();
}
