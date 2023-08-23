import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff34425b),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: 28,
        ),
        elevation: 0,
        title: Text(
          'Weather',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Tajawal', fontSize: 28),
        ),
        backgroundColor: Color(0xff34425b),
      ),
    );
  }
}
