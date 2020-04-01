import 'package:flutter/material.dart';

import 'exposures.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState(false);
}

class HomeScreenState extends State<HomeScreen> {
  bool _sick;

  HomeScreenState(this._sick);

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
                MaterialPageRoute(builder: (context) => ExposuresScreen()),
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
