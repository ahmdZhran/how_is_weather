import 'package:flutter/material.dart';

import '../utls/constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 59, 95),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 40, 59, 95),
        leading: Padding(
          padding: EdgeInsets.only(left: 14),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          'Weather',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Tajawal', fontSize: 26),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for a city',
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                filled: true,
                fillColor: Color.fromARGB(255, 31, 49, 83),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: myCustomColor, width: 1.0),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              onSubmitted: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
