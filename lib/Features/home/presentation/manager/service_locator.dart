import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/data/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
