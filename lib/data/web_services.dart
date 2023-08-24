import 'package:http/http.dart' as http;

import '../utls/constants.dart';

class ApiService {
  ApiService._instance();
  static final ApiService service = ApiService._instance();
  fetchData(String cityName) {
    String url =
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no';
    http.get(Uri.parse(url));
  }
}
