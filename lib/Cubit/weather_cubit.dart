import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_is_weather/Cubit/weather_state.dart';
import 'package:how_is_weather/models/weather_response.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit(super.initialState);

  void fetchWeather({required String cityName}) {}
}
