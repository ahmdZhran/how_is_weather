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
    );
  }
}
