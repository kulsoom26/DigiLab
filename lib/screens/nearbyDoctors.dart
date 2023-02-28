import 'package:flutter/material.dart';

class NearbyDoctors extends StatelessWidget {
  static const routeName = '/nearby-doctors-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text('Nearby Doctors')),
      ),
    );
  }
}
