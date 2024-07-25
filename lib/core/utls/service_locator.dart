import 'package:booklyapp/core/utls/apiservice.dart';
import 'package:booklyapp/features/home/data/repos/home_repoimplement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setuplocater() {
  getit.registerSingleton<Apiservice>(Apiservice(Dio()));
  getit.registerSingleton<HomeRepoimplement>(HomeRepoimplement(getit.get<Apiservice>()));
}
