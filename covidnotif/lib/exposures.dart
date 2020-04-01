import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExposuresScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cities = ['La Défense', 'Paris', 'Courbevoie', 'Marseille', 'Orléan'];
    var now = new DateTime.now();

    var contacts = cities.map((city) {
      return Text(
        '${DateFormat('y, MMM, d H:m').format(now)} at $city',
        style: TextStyle(fontSize: 24),
      );
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Contacts'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: contacts,
        ));
  }
}