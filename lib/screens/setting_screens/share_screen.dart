import 'package:flutter/material.dart';

class Share_Profile extends StatefulWidget {
  const Share_Profile({Key? key}) : super(key: key);

  @override
  State<Share_Profile> createState() => _Share_ProfileState();
}

class _Share_ProfileState extends State<Share_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Profile '),
      ),
    );
  }
}
