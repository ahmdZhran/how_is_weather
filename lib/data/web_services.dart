import 'package:http/http.dart' as http;

class ApiService {
  ApiService._instance();
  static final ApiService service = ApiService._instance();
  fetchData(String cityName) {}
}
