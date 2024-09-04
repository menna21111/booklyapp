

import 'package:equatable/equatable.dart';

import '../../../data/models/bookmodel.dart';

abstract class Similiarbookstate extends Equatable {
  const Similiarbookstate();

  @override
  List<Object> get props => [];
}

class SimiliarbooksInitial extends Similiarbookstate {}

class SimiliarbooksLoading extends Similiarbookstate {}

class SimiliarbooksSuccess extends Similiarbookstate {
  final List<BookModel> books;

  const SimiliarbooksSuccess(this.books);
}

class SimiliarbooksFailure extends Similiarbookstate {
  final String errMessage;

  const SimiliarbooksFailure(this.errMessage);
}