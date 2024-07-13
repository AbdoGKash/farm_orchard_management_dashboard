import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:get_it/get_it.dart';

import '../features/login/data/repo/login_repo.dart';
import '../features/login/logic/cubit/login_cubit.dart';
import 'networking/api_service.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  getIt
      .registerLazySingleton<ApiService>(() => ApiService(createAndSetupDio()));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio.options.connectTimeout = const Duration(seconds: 10);
  dio.options.receiveTimeout = const Duration(seconds: 20);

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      // ثق بالشهادات ذاتية الإصدار هنا
      HttpClient client = HttpClient()
        ..badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      handler.next(options);
    },
    onError: (DioException error, ErrorInterceptorHandler handler) {
      if (error.error is HandshakeException) {}
      handler.next(error);
    },
  ));

  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    error: true,
    requestHeader: true,
    responseHeader: true,
    request: true,
    responseBody: true,
  ));

  return dio;
}

// Dio createAndSetupDio() {
//   Dio dio = Dio();
//   dio
//     ..options.connectTimeout = const Duration(seconds: 10)
//     ..options.receiveTimeout = const Duration(seconds: 20);

//   dio.interceptors.add(LogInterceptor(
//     requestBody: true,
//     error: true,
//     requestHeader: true,
//     responseHeader: true,
//     request: true,
//     responseBody: true,
//   ),
//   );
//   return dio;
// }
