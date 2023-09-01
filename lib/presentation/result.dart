import 'package:flutter/material.dart';
import 'package:how_is_weather/data/remote.dart';
import 'package:how_is_weather/models/weather_response.dart';

import '../widgets/custome_text.dart';

class ResultPage extends StatelessWidget {
  final String? cityName;
  ResultPage({this.cityName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/stars_in_sky.jfif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Center(
              // child: Column(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 100),
              //       child: CustomText(
              //         text: 'Alexandria',
              //         fontSize: 40,
              //         color: Colors.white,
              //       ),
              //     ),
              //     CustomText(
              //       text: '19C°',
              //       fontSize: 70,
              //       color: Colors.white,
              //     ),
              //     CustomText(
              //       text: 'Mostly Clear',
              //       fontSize: 20,
              //       color: Colors.white.withOpacity(0.8),
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         CustomText(
              //           text: 'H:24°',
              //           fontSize: 20,
              //           color: Colors.white,
              //         ),
              //         SizedBox(width: 10),
              //         CustomText(
              //           text: 'L:18°',
              //           fontSize: 20,
              //           color: Colors.white,
              //         )
              //       ],
              //     )
              //   ],
              // ),

              ),
          FutureBuilder(
              future: cityName == null
                  ? ApiService.service.fetchData('Cairo')
                  : null,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  WeatherResponse weatherData = snapshot.data!;
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: CustomText(
                          text: weatherData.location?.name ?? 'Unknown',
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      CustomText(
                        text:
                            '${weatherData.current!.tempC?.toStringAsFixed(0)}C°',
                        fontSize: 70,
                        color: Colors.white,
                      ),
                      CustomText(
                        text: weatherData.current!.condition!.text.toString(),
                        fontSize: 20,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'H:24°',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          CustomText(
                            text: 'L:18°',
                            fontSize: 20,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text(snapshot.error!.toString());
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              })
        ],
      ),
    );
  }
}
