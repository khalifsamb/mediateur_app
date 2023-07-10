import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mediature/pages/MotMediateur.dart';
import 'package:mediature/pages/Pouvoirs.dart';
import 'package:mediature/pages/Presentation.dart';
import 'package:mediature/pages/historique.dart';
import 'package:mediature/pages/moyenDaction.dart';
import 'package:mediature/pages/saisine.dart';

class ScrollingRowWidget extends StatefulWidget {
  @override
  _ScrollingRowWidgetState createState() => _ScrollingRowWidgetState();
}

class _ScrollingRowWidgetState extends State<ScrollingRowWidget> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10),
          child: Text(
            'Informations Utiles',
            style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            childAspectRatio: 1.0,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
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

                        SizedBox(height: 8.0),
                       Text(
                            'Présentation', style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),

                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
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
                            'Pouvoirs', style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),

                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all( color: Color(0xFF006400), width: 3),
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
                            'Historique', style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child:
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all( color: Color(0xFF006400), width: 3),
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
                          'Le Mot du Médiateur',
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(fontSize: 12.0),
                        ),

                    ],
                  ),
                ),
              ),
              ),
              Expanded(child:

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all( color: Color(0xFF006400), width: 3),
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
                          'Saisine', style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),

                    ],
                  ),
                ),
              ),
              ),
              Expanded(child:
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all( color: Color(0xFF006400), width: 3),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: double.infinity,
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
                            'Les moyens d\'action',
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(fontSize: 12.0),
                          ),

                      ],
                    ),
                  ),

                ),
              ),
              ),
            ],
          ),
        ),
      ],
    );

  }
}
