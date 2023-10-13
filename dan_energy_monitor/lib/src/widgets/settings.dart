import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class MySetting extends StatefulWidget {
  MySetting();
  @override
  State<StatefulWidget> createState() => SettingState();
}

class SettingState extends State<MySetting> {
  SettingState({Key? key});

  void showAboutUsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("About Us"),
          content: Text(
            "We are the team behind the app, committed to creating a more sustainable future with our Dan Energy Monitoring App. "
            " Join us in monitoring and reducing energy consumption for a greener world.",
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'about_us') {
          showAboutUsDialog(context);
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'export',
          child: ListTile(
            leading: Icon(FontAwesomeIcons.fileExport),
            title: Text("Export"),
          ),
        ),
        PopupMenuItem<String>(
          value: 'about_us',
          child: ListTile(
            leading: Icon(FontAwesomeIcons.info),
            title: Text("About us"),
          ),
        ),
      ],
    );
  }
}
