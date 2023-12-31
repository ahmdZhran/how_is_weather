import 'dart:convert';

import 'package:how_is_weather/models/weather_response.dart';
import 'package:http/http.dart' as http;

import '../utls/constants.dart';

class ApiService {
  ApiService._instance();
  ApiService.namedConstructor();
  static final ApiService service = ApiService._instance();
  Future<WeatherResponse> fetchData({required String cityName}) async {
    String url =
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no';

    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String body = response.body;
      var jsonResponse = jsonDecode(body);
      print('API Response Body: ${response.body}');
      return WeatherResponse.fromJson(jsonResponse);
    } else {
      throw Exception('Unable to fetch data');
    }
  }
}
