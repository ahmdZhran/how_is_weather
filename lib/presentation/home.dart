import 'package:flutter/material.dart';

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
                  ),
                ),
                CustomText(
                  text: '19C°',
                  fontSize: 70,
                ),
                CustomText(text: 'Mostly Clear', fontSize: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'H:24°', fontSize: 20),
                    CustomText(text: 'L:18°', fontSize: 20)
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
