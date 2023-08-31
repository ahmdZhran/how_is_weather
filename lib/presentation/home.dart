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
                  Text(
                    'Know Your weather',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('press on search Icon in below'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
