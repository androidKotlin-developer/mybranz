import 'package:flutter/material.dart';

class My_Account extends StatefulWidget {
  const My_Account({Key? key}) : super(key: key);

  @override
  State<My_Account> createState() => _My_AccountState();
}

class _My_AccountState extends State<My_Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('My Account'),
    ),);
  }
}
