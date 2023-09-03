import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:how_is_weather/Cubit/weather_cubit.dart';
import 'package:how_is_weather/data/remote.dart';
import 'presentation/home.dart';

void main() {
  runApp(BlocProvider(
    create: (context) {
      return WeatherCubit(ApiService());
    },
    child: WeatherApp(),
  ));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Home(),
    );
  }
}
