import 'package:http/http.dart' as http;

import '../utls/constants.dart';

class ApiService {
  ApiService._instance();
  static final ApiService service = ApiService._instance();
  Future<http.Response> fetchData(String cityName) async {
    String url =
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no';

    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      print('API Response Body: ${response.body}');

      return response;
    } else {
      throw Exception('Unable to fetch data');
    }
  }
}
