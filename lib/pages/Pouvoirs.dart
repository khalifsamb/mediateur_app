import 'package:flutter/material.dart';
import 'package:share/share.dart';


class PouvoirsPage extends StatelessWidget {
  const PouvoirsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pouvoirs'),
        backgroundColor: Color(0xFF006400),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'QUELS SONT LES POUVOIRS QUE LA LOI CONFERE AU MEDIATEUR DE LA REPUBLIQUE ?',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Le Médiateur de la République dispose des pouvoirs suivants :',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le pouvoir d’enquête et d’investigation (article 16)'),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le pouvoir de demander communication de tout document ou dossier, sauf en matière de secret concernant l’instruction judiciaire, la défense nationale, la sûreté de l’Etat ou la politique étrangère (article 17)'),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le pouvoir de faire conduire des enquêtes et des vérifications par les Corps de Contrôle et de Vérification de l’Etat (article 16)'),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le pouvoir de suggestion en direction de l’autorité compétente afin d’engager des poursuites disciplinaires contre tout agent responsable d’un manquement grave à ses obligations professionnelles ou, le cas échéant, de saisir d’une plainte la juridiction répressive pour des poursuites judiciaires (article 14)'),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le pouvoir de formuler des recommandations (article 4 et 11)'),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le pouvoir de proposer des réformes (article 11)'),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Le pouvoir d’autosaisine (article 9)'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Pour le conforter dans ses pouvoirs,  un circulaire n°000 0014 PM/SGG/SGA/SP/bko du Premier Ministre, en date du 29 décembre 2004 et adressée au Gouvernement, rappelle les principes qui encadrent le rôle du Médiateur de la République.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
