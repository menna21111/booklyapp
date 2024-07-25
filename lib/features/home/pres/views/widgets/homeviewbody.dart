import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/customerormessage.dart';
import '../../manager/featuredbook_cubit/featured_books_cubit.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return Column(
          children: [Text('dddddddddddddddddddd')],
        );
      } else if (state is FeaturedBooksFailure) {
        return CustomErorMessage(
          erormessage: state.errMessage,
        );
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
