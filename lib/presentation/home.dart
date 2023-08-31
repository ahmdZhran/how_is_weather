import 'package:flutter/material.dart';
import 'package:how_is_weather/presentation/search_page.dart';

import '../widgets/custome_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String cityName;
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
                  return const SearchPage();
                },
              ),
            );
          },
          child: const Icon(
            Icons.search,
            color: Colors.black,
          )),
      body: Stack(
        children: [
          Image.asset(
            'assets/stars_in_sky.jfif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: CustomText(
                    text: 'Alexandria',
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                CustomText(
                  text: '19C°',
                  fontSize: 70,
                  color: Colors.white,
                ),
                CustomText(
                  text: 'Mostly Clear',
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
                    CustomText(
                      text: 'L:18°',
                      fontSize: 20,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
