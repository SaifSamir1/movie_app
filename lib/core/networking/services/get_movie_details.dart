import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_app/core/networking/api_endpoints.dart';
import 'package:movie_app/core/networking/dio_helper.dart';

import '../../../features/details/data/models/details_model.dart';


class GetMovieDetails {
  static getDetails({required int id}) async {
    try {
      final response =
          await DioHelper.getData(path: ApiEndPoints.movieDetails(id));

      return MovieDetails.fromJson(response.data);
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
