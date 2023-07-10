import 'package:flutter/material.dart';

class Moyendaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moyens d’Actions'),
        backgroundColor: Color(0xFF006400),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'QUELS SONT LES MOYENS D’ACTION DU MEDIATEUR DE LA REPUBLIQUE ?',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('1) Lorsqu’une réclamation lui paraît justifiée, le Médiateur de la République fait toutes les recommandations qui paraissent de nature à régler les difficultés dont il est saisi et, le cas échéant, toutes propositions tendant à améliorer le fonctionnement de l’organisme concerné ( article 11).',textAlign: TextAlign.justify,),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text(' 2)Le Médiateur de la République incite les services publics à rechercher l’esprit des lois dans l’application des textes notamment en cas de conflit avec les citoyens et à accepter de prendre en compte l’équité dans leurs relations avec les citoyens dans le respect des législations et règlements en vigueur ( article 11).',textAlign: TextAlign.justify,),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('3) Il contribue aussi, par des propositions de simplification administrative ou de réformes qu’il formule, à la modernisation des services publics ( article 13).'),
              ),
              ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('4) Enfin, le Médiateur de la République est investi aussi d’une mission générale de contribution à l’amélioration de l’environnement institutionnel et économique de l’entreprise en jouant pleinement son rôle d’interface et de facilitation dans les rapports entre l’Administration, au sens large du terme, et l’entreprise ( article 2).',textAlign: TextAlign.justify,),
              ),

              SizedBox(height: 16.0),
              Text(
                'Les Ministres et toutes autorités publiques doivent faciliter la tâche du Médiateur de la République ( article 16).',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.numbers),
                title: Text('Ils sont tenus d’autoriser les agents placés sous leur autorité à répondre aux questions et éventuellement aux convocations du Médiateur de la République, et les corps de contrôle ou d’inspection à accomplir, dans le cadre de leurs compétences, les vérifications et enquêtes demandées par le Médiateur de la République. Les agents et les corps de contrôle ou d’inspection sont tenus d’y répondre ou d’y déférer.',textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.numbers),
                title: Text('Le Médiateur de la République peut demander à l’autorité compétente d’engager, contre tout agent responsable d’un manquement grave à ses obligations professionnelles, une procédure disciplinaire ou, le cas échéant, de saisir d’une plainte la juridiction répressive (article 14).',textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.numbers),
                title: Text('Le Médiateur de la République est tenu informé de la suite réservée à son intervention. A défaut de réponse satisfaisante, il peut en aviser par écrit le Président de la République qui apprécie s’il y a lieu de donner à l’autorité concernée, l’instruction appropriée ( article 12).',textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.numbers),
                title: Text('A ce propos, le Médiateur de la République a la faculté d’évoquer dans le rapport annuel qu’il présente au Président de la République tout cas qu’il estime significatif ( article 18).',textAlign: TextAlign.justify,),
              ),
              SizedBox(height: 16.0),

              ListTile(
                leading: Icon(Icons.warning, color: Colors.red,),
                title: Text('Cependant, le Médiateur de la République ne peut, en aucun cas, donner des injonctions à l’administration ou prendre des décisions en ses lieu et place.',textAlign: TextAlign.justify,),
              ),
            ],
          ),
        ),
      ),    );
  }
}