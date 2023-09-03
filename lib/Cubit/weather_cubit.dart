import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_is_weather/Cubit/weather_state.dart';
import 'package:how_is_weather/data/remote.dart';

import '../models/weather_response.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit(this.apiService) : super(WeatherInitial());
  ApiService apiService;
  WeatherResponse? weatherResponse;
  String? cityName;
  void fetchWeather({required String cityName}) async {
    emit(WeatherLoading());
    try {
      weatherResponse = await apiService.fetchData(cityName: cityName);
      emit(LoadingSuccess());
    } on Exception catch (e) {
      emit(LoadingFailor());
    }
  }
}
