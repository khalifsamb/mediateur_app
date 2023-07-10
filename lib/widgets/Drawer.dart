import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediature/pages/Form.dart';
import 'package:mediature/pages/postListPage.dart';
import 'package:url_launcher/url_launcher.dart';



class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF006400),
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),

          Divider(),
          ListTile(
            title: Text('Activités'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PostListPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Saisir le Médiateur'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => FormPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Conditions d\'utilisation'),
            onTap: () async {
              const url = 'https://www.mediaturedelarepublique.sn/conditions-dutilisation/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Impossible de lancer $url';
              }
            },
          ),

          Divider(),
          ListTile(
            title: Text('Politique de confidentialité'),
            onTap: () async {
              const url = 'https://www.mediaturedelarepublique.sn/politique-de-confidentialite/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Impossible de lancer $url';
              }
            },
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Suivez la Médiature sur",style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                color: Color(0xFF006400)),),
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.facebook, size: 50, color: Color(0xFF1877F2)),
            title: Text('Facebook'),
            onTap: () async {
              const url = 'https://web.facebook.com/mediateur_senegal';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Impossible de lancer $url';
              }
            },
          ),
          Divider(),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.twitter, size: 50, color: Color(0xFF1DA1F2)),
            title: Text('Twitter'),
            onTap: () async {
              const url = 'https://twitter.com/search?q=mediature%20de%20la%20republique%20s%C3%A9n%C3%A9gal&src=typed_query';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Impossible de lancer $url';
              }
            },
          ),
          Divider(),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.instagram, size: 50,color: Color(0xFFE1306C),),
            title: Text('Instagram'),
              onTap: () async {

              },
          ),
          Divider(),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.youtube, size: 50, color: Color(0xFFFF0000)),
            title: Text('YouTube'),
            onTap: () async {
              const url = 'https://www.youtube.com/@lemediateurdelarepublique';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Impossible de lancer $url';
              }
            },
          ),

        ],
      ),
    );
  }
}
