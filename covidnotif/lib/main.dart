import "dart:math";
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 Notifier',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState(false);
}

class HomeState extends State<Home> {
  bool _sick;

  HomeState(this._sick);

  @override
  Widget build(BuildContext context) {
    var healthText = _sick
        ? Text(
            "I'm sick",
            style: TextStyle(fontSize: 24, backgroundColor: Colors.red),
          )
        : Text(
            "I'm curred",
            style: TextStyle(fontSize: 24, backgroundColor: Colors.green),
          );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("I'm ${!_sick ? 'sick' : 'curred'}"),
      content: Text("Do you confirm you are ${!_sick ? 'sick' : 'curred'} ?"),
      actions: [
        FlatButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text("Confirm"),
          onPressed: () {
            setState(() {
              _sick = !_sick;
            });
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Covid-19 Notifier'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text(
              'Contacts',
              style: TextStyle(fontSize: 24),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactsRoute()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: healthText,
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alert;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ContactsRoute extends StatelessWidget {
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
