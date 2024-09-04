

import 'package:booklyapp/features/home/data/models/bookmodel.dart';
import 'package:booklyapp/features/home/pres/manager/simailar_books_cubit/similirbookcubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/BookDetails_viewBody.dart';

class BookdetatailsView extends StatefulWidget {
  const BookdetatailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookdetatailsView> createState() => _BookdetatailsViewState();
}

class _BookdetatailsViewState extends State<BookdetatailsView> {
  @override
  void initState() {
    BlocProvider.of<Similirbookcubit>(context).fetchSImilarBooks(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }


  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: BookdetailsViewbody(bookModel: widget.bookModel,),
      ),
    );
  }
}
