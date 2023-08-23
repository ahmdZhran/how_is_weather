import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff34425b),
      appBar: AppBar(
        backgroundColor: const Color(0xff34425b),
        leading: const Padding(
          padding: EdgeInsets.only(left: 14),
          child: Icon(
            Icons.arrow_back_ios,
            size: 28,
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
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.red, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
