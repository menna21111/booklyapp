import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/fetchedbookdetails.dart/newset_books_cubit.dart';
import 'custmitemvertical.dart';

class Bestsellerlist extends StatelessWidget {
  const Bestsellerlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (context, state) {
      if (state is NewsetBooksSuccess) {
        return ListView.builder(
          
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerListitem(book:  state.books[index]),
            );
          },
        );
      } else if (state is NewsetBooksFailure) {
        return Center(child: Text(state.errMessage));
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
