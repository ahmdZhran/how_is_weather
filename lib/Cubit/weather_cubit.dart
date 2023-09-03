import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_is_weather/Cubit/weather_state.dart';
import 'package:how_is_weather/data/remote.dart';
import 'package:how_is_weather/models/weather_response.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit(super.initialState, this.apiService);
  ApiService apiService;
  void fetchWeather({required String cityName}) {
    emit(WeatherLoading());
    try {
      apiService.fetchData(cityName: cityName);
    } on Exception catch (e) {
      // TODO
    }
  }
}
