import 'package:dio/dio.dart';
import 'package:portraitwallfy/constants/frazile.dart';
import 'package:portraitwallfy/services/responses.dart';

class ServiceCaller {
  final Dio _dio = Dio();

  Future<Food> fetchWalls({int page}) async {
    Food food;
    try {
      // var result = await _loadGradientAsset();
      // String url = Frazile.baseURL + Frazile.foodURL;
      var result = await _dio.get(
        Frazile.baseURL,
        queryParameters: {
          "client_id": Frazile.clientId,
          "query": Frazile.query,
          "per_page": Frazile.perPage,
          "orientation": Frazile.orientation,
          "page": page
        },
      );
      food = Food.fromJson(result.data);
      return food;
    } on DioError catch (error) {
      String er = Frazile().getErrorMessage(error);
      throw er;
    }
  }

  // Future<String> _loadGradientAsset() async {
  //   return await rootBundle.loadString('assets/data/gradients.json');
  // }
}
