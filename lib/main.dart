import 'package:booklyapp/core/utls/apiservice.dart';
import 'package:booklyapp/core/utls/service_locator.dart';
import 'package:booklyapp/features/home/data/repos/home_repoimplement.dart';
import 'package:booklyapp/features/home/pres/manager/featuredbook_cubit/featured_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'costant.dart';
import 'features/home/pres/manager/fetchedbookdetails.dart/newset_books_cubit.dart';
import 'features/splach/pres/splachview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setuplocater();
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getit.get<HomeRepoimplement>())..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewsetBooksCubit(getit.get<HomeRepoimplement>()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimarycolor),
        home: const Splachview(),
      ),
    );
  }
}
