import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff34425b),
      appBar: AppBar(
        title: Text(
          'weather app',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff34425b),
      ),
    );
  }
}
