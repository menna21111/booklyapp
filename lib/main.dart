import 'package:booklyapp/core/utls/service_locator.dart';
import 'package:booklyapp/features/home/data/repos/home_repoimplement.dart';
import 'package:booklyapp/features/home/pres/manager/featuredbook_cubit/featured_books_cubit.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utls/approuter.dart';
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

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                getit.get<HomeRepoimplement>())
              ..fetchFeaturedBooks()), //after provide do method of fetch .. meen after do and single . mean return
        BlocProvider(
            create: (context) =>
                NewsetBooksCubit(getit.get<HomeRepoimplement>())..fetchNewestBooks())
      ],
      child: MaterialApp.router(
        routerConfig: Approuter.router,

        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimarycolor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),//color of themedata is defult lightmode and we edit to become darkmode
      
      ),
    );
  }
}
