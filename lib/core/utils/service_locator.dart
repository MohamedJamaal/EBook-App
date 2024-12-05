import 'package:dio/dio.dart';
import 'package:ebookapp/core/utils/api_service.dart';
import 'package:ebookapp/features/home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setup() {
  getit.registerSingleton<ApiService>(ApiService(Dio()));
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getit.get<ApiService>()),
  );
}
