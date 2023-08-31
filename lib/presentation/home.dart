import 'package:animated_text_kit/animated_text_kit.dart';
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
                  return SearchPage();
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
            child: SafeArea(
              child: Column(
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Know How is the weather',
                          textStyle: TextStyle(color: Colors.white))
                    ],
                    onTap: () {
                      print("Top Event");
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
