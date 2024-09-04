import 'package:booklyapp/features/home/pres/views/widgets/CustomListitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utls/approuter.dart';
import '../../manager/featuredbook_cubit/featured_books_cubit.dart';

class Customhorizantallist extends StatelessWidget {
  const Customhorizantallist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .28,
          child: ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(Approuter.bookdetails,extra: state.books[index]);
                  },
                  child: Customlistitem(
                      imageurl:
                          state.books  [index].volumeInfo.imageLinks?.thumbnail??''),
                ),
              );
            },
          ),
        );
      } else if (state is FeaturedBooksFailure) {
        print(state.errMessage);
        return Text(state.errMessage);
      } else {
        return CircularProgressIndicator();
      }
    });
  }
}
