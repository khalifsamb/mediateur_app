import 'package:flutter/material.dart';
import 'package:share/share.dart';


class Saisine extends StatelessWidget {
  const Saisine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saisine'),
        backgroundColor: Color(0xFF006400),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'QUI PEUT SAISIR LE MÉDIATEUR DE LA RÉPUBLIQUE  ?',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Saisine par un réclamant',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Toute personne physique ou morale qui estime, à l’occasion d’une affaire la concernant, que l’Administration de l’Etat, la Collectivité locale, l’Établissement public ou l’organisme investi d’une mission de service public n’a pas fonctionné conformément à sa mission peut, par réclamation écrite, porter l’affaire à la connaissance du Médiateur de la République ( article 8).', textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 16.0),
              Text(
                'Saisine par le Président de la République',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le Président de la République peut également soumettre au Médiateur de la République toute réclamation de même nature dont il aura été saisi ( article 8).',textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 16.0),
              Text(
                'Autosaisine',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le Médiateur de la République, s’appuyant sur son observation du fonctionnement des Administrations de l’Etat ou des organismes investis d’une mission de service public à travers les motifs des réclamations qu’il reçoit, peut de sa propre initiative, et sans attendre d’être saisi, intervenir à titre préventif : c’est le pouvoir d’auto saisine du Médiateur de la République ( article 9).', textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 16.0),
              Text(
                'COMMENT SAISIR LE MÉDIATEUR DE LA RÉPUBLIQUE ?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              ListTile(
                title: Text('La saisine du Médiateur se fait par écrit directement et sans frais. La réclamation doit être accompagnée de toutes les pièces justificatives.Le réclamant doit prouver qu’il a préalablement accompli les démarches qui ont mis l’Administration concernée en mesure d’examiner ses griefs. C’est la règle de la saisine préalable.',textAlign: TextAlign.justify,),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
