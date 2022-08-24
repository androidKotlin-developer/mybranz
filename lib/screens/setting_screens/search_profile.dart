import 'package:flutter/material.dart';

class Search_Profile extends StatefulWidget {
  const Search_Profile({Key? key}) : super(key: key);

  @override
  State<Search_Profile> createState() => _Search_ProfileState();
}

class _Search_ProfileState extends State<Search_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Profile, Product or Brand'),
      ),
    );
  }
}
