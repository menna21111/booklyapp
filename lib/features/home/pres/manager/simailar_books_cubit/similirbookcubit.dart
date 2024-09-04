import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/pres/manager/simailar_books_cubit/similiarbookstate.dart';

import 'package:equatable/equatable.dart';

import '../../../data/models/bookmodel.dart';
import '../../../data/repos/home_repo.dart';


class Similirbookcubit extends Cubit<Similiarbookstate> {
  Similirbookcubit(this.homeRepo) : super(SimiliarbooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSImilarBooks({required String category}) async {
    emit(SimiliarbooksLoading());
    var result = await homeRepo.fetchSimilerFeaturedBooks(category:category );
    result.fold((failure) {
      emit(SimiliarbooksFailure(failure.errMessage));
    }, (books) {
      emit(SimiliarbooksSuccess(books));
    });
  }
}