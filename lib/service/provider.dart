import 'dart:convert';
import 'dart:io';

import 'package:RESTBackgroudTask/models/photo_models.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:neat_periodic_task/neat_periodic_task.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class PhotoProvider {
  Dio _dio;
  DioCacheManager _dioCacheManager;
  PhotoProvider._privateContractor();

  static final PhotoProvider instance = PhotoProvider._privateContractor();

  Future<PhotoModel> getPhotos() async {
    _dio = Dio();
    _dioCacheManager = DioCacheManager(CacheConfig());
    BaseOptions options = BaseOptions(
        baseUrl: "https://api.jadroo.com/api/v3",
        connectTimeout: 5000,
        receiveTimeout: 3000);
    _dio = Dio(options);
    _dio.interceptors.add(_dioCacheManager.interceptor);
    _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        compact: false));

    try {
      String fileName = "photos.json";
      var dir = await getTemporaryDirectory();
      File file = new File(dir.path + "/" + fileName);
      interverHandler(file);
      if (file.existsSync()) {
        print("Loading from cache");
        var jsonData = file.readAsStringSync();
        var mapdatas = json.decode(jsonData);
        return PhotoModel.fromJson(mapdatas);
      } else {
        print("----------nul value");
      }
    } on DioError catch (e) {
      print(e);
    }
  }

  interverHandler(File file) async {
    final scheduler = NeatPeriodicTaskScheduler(
      interval: Duration(minutes: 1),
      name: 'photo',
      timeout: Duration(seconds: 5),
      task: () async {
        print("---------------task working");
        Response response = await _dio.get("/products");
        print("----------data come from api");
        if (file.existsSync()) {
          file.deleteSync();
        }
        file.writeAsStringSync(json.encode(response.data),
            flush: true, mode: FileMode.write);
      },
      minCycle: Duration(seconds: 5),
    );

    scheduler.start();
    await ProcessSignal.sigterm.watch().first;
    await scheduler.stop();
  }
}
