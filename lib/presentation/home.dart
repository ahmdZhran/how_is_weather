import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:how_is_weather/models/weather_response.dart';

import 'package:how_is_weather/presentation/search_page.dart';

import '../data/remote.dart';
import '../widgets/custome_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? cityName;
  void updateUI() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SearchPage(
                    updateUI: updateUI,
                  );
                },
              ),
            );
          },
          child: const Icon(
            Icons.search,
            color: Colors.black,
          )),
      body: weatherData == null
          ? Stack(
              children: [
                Image.asset(
                  'assets/stars_in_sky.jfif',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 15, right: 1),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('Know how is the weather',
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Tajawal'),
                                speed: const Duration(milliseconds: 100)),
                            TyperAnimatedText(
                                'Start the search by pressing on the search icon below...',
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Tajawal'),
                                speed: const Duration(milliseconds: 100))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          : Stack(
              children: [
                Image.asset(
                  'assets/stars_in_sky.jfif',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                FutureBuilder(
                  future: cityName != null
                      ? ApiService.service.fetchData(cityName: cityName!)
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
                            text:
                                weatherData.current!.condition!.text.toString(),
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.8),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text:
                                    'H:${weatherData.current!.humidity.toString()}°',
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 10),
                              CustomText(
                                text:
                                    'L:${weatherData.location!.lat?.toStringAsFixed(0)}°',
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
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      );
                    }
                  },
                )
              ],
            ),
    );
  }
}
