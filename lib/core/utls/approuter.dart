import 'package:booklyapp/core/utls/service_locator.dart';
import 'package:booklyapp/features/home/pres/views/bookdetatails_view.dart';
import 'package:booklyapp/features/home/pres/views/homeview.dart';
import 'package:booklyapp/features/splach/pres/splachview.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/bookmodel.dart';
import '../../features/home/data/repos/home_repoimplement.dart';
import '../../features/home/pres/manager/fetchedbookdetails.dart/newset_books_cubit.dart';
import '../../features/home/pres/manager/simailar_books_cubit/similirbookcubit.dart';
import '../../features/search/presentationn/views/search_view.dart';

abstract class Approuter {
  static const homescreen = '/homescreen'; //static to access it frome everyone
  static const bookdetails = '/bookdetails'; //static to access it frome everyone
  static const searchscrean = '/searchpage'; //static to access it frome everyone
 static final router = GoRouter(routes: [
    GoRoute(
      path: '/',//inial route
      builder: (context, state) => const Splachview(),
    ),
    GoRoute(
      path: homescreen,
      builder: (context, state) => const Homeview(),
    )
  ,  GoRoute(
      path: bookdetails,
      builder: (context, state) => BlocProvider(
        create:(context) => Similirbookcubit(getit.get<HomeRepoimplement>()),
        
          child:   BookdetatailsView(bookModel:  state.extra as BookModel),
        
      ),
    )
  ,  GoRoute(
      path: searchscrean,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
