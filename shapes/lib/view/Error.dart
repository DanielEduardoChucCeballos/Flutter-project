import 'package:flutter/material.dart';

import 'Button_nav.dart';

class Error_Test extends StatelessWidget {
  const Error_Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: ButoonNav(),
      appBar: AppBar(
        title: Center(
          child: Text('Error_Test', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}