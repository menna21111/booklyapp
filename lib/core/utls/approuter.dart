import 'package:booklyapp/features/home/pres/views/bookdetatails_view.dart';
import 'package:booklyapp/features/home/pres/views/homeview.dart';
import 'package:booklyapp/features/splach/pres/splachview.dart';
import 'package:go_router/go_router.dart';

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
      builder: (context, state) => const BookdetatailsView(),
    )
  ,  GoRoute(
      path: searchscrean,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
