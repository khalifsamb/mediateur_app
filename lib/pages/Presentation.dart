import 'package:flutter/material.dart';


class PresentationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Le Médiateur de la République'),
        backgroundColor: Color(0xFF006400),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://www.mediaturedelarepublique.sn/wp-content/uploads/2022/09/logo-Me%CC%81diature-2_Plan-de-travail-1-1.png',
              ),
              Text(
                'Autorité indépendante',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Le Médiateur de la République est une autorité indépendante nommée pour une durée de six ans non renouvelable.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                'Réclamations concernant les administrations publiques',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Sa mission est de recevoir les réclamations concernant le fonctionnement des administrations publiques et des organismes investis d\'une mission de service public.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                'Limites à son domaine de compétence',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Le Médiateur de la République ne peut pas intervenir dans les matières opposant des personnes physiques entre elles, une personne physique à une personne morale de droit privé, ou une personne physique ou morale à une administration étrangère. Il ne peut pas non plus être poursuivi pour ses opinions ou ses actes. Le Médiateur peut être saisi par toute personne physique ou morale concernée ou par le Président de la République et il peut également s\'auto-saisir. Les moyens d\'action du Médiateur comprennent la formulation de recommandations, la contribution à la modernisation des services publics, la suggestion d\'engager des poursuites disciplinaires, ainsi que le pouvoir d\'enquête et d\'investigation. Le Médiateur de la République est membre de plusieurs associations et organisations internationales de médiation et de protection des droits des citoyens.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
