import 'package:flutter/material.dart';

class HistoriquePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Historique de la Médiature'),
          backgroundColor: Color(0xFF006400),
    ),
    body: SingleChildScrollView(
    child: Container(
    padding: EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text(
    'La longue marche des institutions de Médiation Sociale',textAlign: TextAlign.justify,
    style: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 16.0),
    Text(
    'Un inventaire non exhaustif des pratiques sociales de médiation permet d’en recenser plusieurs formes ; parmi les plus importantes, on citera la médiation familiale et conjugale mais également la médiation dans le secteur public et parapublic. C’est ce dernier aspect de la médiation qui nous intéresse dans le cadre de cette présentation.',
      textAlign: TextAlign.justify,
    style: TextStyle(
    fontSize: 18.0,
    ),
    ),
    SizedBox(height: 32.0),
    Text(
    'L’institution du Médiateur de la République au Sénégal',
    style: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 16.0),
    Text(
    'Au Sénégal, le paysage institutionnel s’est enrichi avec l’institution du Médiateur de la République par la Loi n°91-14 du 11 février 1991 abrogée et remplacée par la Loi n°99-04 du 29 janvier 1999. Le Médiateur est l’équivalent institutionnel de l’Ombudsman, mot suédois qui signifie « celui qui parle au nom d’autrui », en somme, le porte-parole des citoyens et des citoyennes qui ont des démêlées avec l’Administration.',
      textAlign: TextAlign.justify,
    style: TextStyle(
    fontSize: 18.0,
    ),
    ),
    SizedBox(height: 16.0),
    Text(
    'Autorité administrative indépendante, le Médiateur de la République est un mécanisme de protection non juridictionnelle aménagé pour pallier les insuffisances des voies juridictionnelles de règlement des litiges ou les carences, voire, les abus de l’administration.',
      textAlign: TextAlign.justify,
    style: TextStyle(
    fontSize: 18.0,
    ),
    ),
    SizedBox(height: 16.0),
    Text(
    'On trouve aussi certaines autres expressions comme « protecteur du citoyen », « Défenseur du Peuple », « Défenseur des droits », « Avocat du Peuple », « Commissaire parlementaire pour l’Administration ».',
      textAlign: TextAlign.justify,
    style: TextStyle(
    fontSize: 18.0,
    ),
    ),
    SizedBox(height: 32.0),
    Text(
    'L’Ombudsman en Europe et en Afrique',
    style: TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    SizedBox(height: 16.0),
    Text(
    'S’inspirant du modèle suédois, les Pays Scandinaves institueront chacun à son tour un Ombudsman.'),
    ],
    ),
    ),
    ),
    );
  }
}