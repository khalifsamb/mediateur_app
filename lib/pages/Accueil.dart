import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediature/pages/Form.dart';
import 'package:mediature/pages/MotMediateur.dart';
import 'package:mediature/pages/Pouvoirs.dart';
import 'package:mediature/pages/Presentation.dart';
import 'package:mediature/pages/historique.dart';
import 'package:mediature/pages/moyenDaction.dart';
import 'package:mediature/pages/postList.dart';
import 'package:mediature/pages/saisine.dart';
import 'package:mediature/widgets/Drawer.dart';


class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  set currentIndex(int index) {
    if (mounted) {
      setState(() {
        _currentIndex = index;

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      backgroundColor: const Color(0xFFEAEAEA),
       appBar: AppBar(
         elevation: 5.0,
         backgroundColor: Colors.green[700],
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.only(
             bottomLeft: Radius.circular(25.0),
             bottomRight: Radius.circular(25.0),
           ),
         ),
         title: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset(
               "lib/assets/logo.png",
               fit: BoxFit.contain,
               height: 32,
             ),
             SizedBox(width: 5.0),
             Expanded(
               child: Wrap(
                 alignment: WrapAlignment.center,
                 children: [
                   Text(
                     'Médiature ',
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                   ),
                   Text(
                     'de la République',
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),



        drawer: const MyDrawer(), // ajout du widget Drawer
      // Appel du widget Drawer défini dans MyDrawer.dart
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormPage()),
          );// Code à exécuter lorsqu'on clique sur le bouton
        },
        label: Text('Saisir le Médiateur'),
        icon: Icon(Icons.message),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text("Informations Utiles", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20.0,
              childAspectRatio: 1.0,
              children: [
                // Premier élément
                Container(
                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xFF006400), width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.balanceScale),
                        iconSize: 40,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PresentationPage()),
                          );
                        },
                      ),
                      Text(
                        'Présentation',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xFF006400), width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.gavel),
                        iconSize: 40,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PouvoirsPage()),
                          );
                        },
                      ),
                      Text(
                        'Pouvoirs',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                // Troisième élément
                Container(
                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xFF006400), width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.history),
                        iconSize: 40,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HistoriquePage()),
                          );
                        },
                      ),
                      Text(
                        'Historique',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                ),
                // Quatrième élément
                Container(
                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xFF006400), width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.bullhorn),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MotduMediateurPage()),
                          );
                        },
                      ),
                      Text(
                        'Mot du Médiateur',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xFF006400), width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.handsHelping),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Moyendaction()),
                          );
                        },
                      ),
                      Text(
                        'Moyen d\'Action',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                // Cinquième élément
                Container(
                  decoration: BoxDecoration(
                    border: Border.all( color: Color(0xFF006400), width: 3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.pen),
                        iconSize: 30,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Saisine()),
                          );
                        },
                      ),
                      Text(
                        'Saisine',
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                // Sixième élément
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Activites de l\'Institution',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            PostList(),
          ],
        ),
      )


    );

  }
}