import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Reglage extends StatefulWidget {
  const Reglage({Key? key}) : super(key: key);

  @override
  _ReglageState createState() => _ReglageState();
}

class _ReglageState extends State<Reglage> {
  bool _notificationActivated = true;
  int _languageValue = 1;
  void _launchConfidentialiteURL() async {
    const url = 'https://www.example.com/confidentialite'; // Remplacez par l'URL de votre choix
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible de lancer l\'URL $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF006400),
        title: Text('Réglages'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notifications',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text('Activer les notifications'),
              value: _notificationActivated,
              onChanged: (value) {
                setState(() {
                  _notificationActivated = value;
                });
              },
              inactiveThumbColor: Colors.grey,
            ),

            SizedBox(height: 16.0),
            Text(
              'Langue',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              child: Text(
                'Confidentialité',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF006400),
                ),
              ),
              onTap: _launchConfidentialiteURL,
            ),

          ],
        ),
      ),

    );
  }
}
