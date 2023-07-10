import 'package:flutter/material.dart';

class MotduMediateurPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mot du Médiateur M. Demba KANDJI'),
        backgroundColor: Color(0xFF006400),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.network(
                'https://www.mediaturedelarepublique.sn/wp-content/uploads/2022/09/IMG-20220323-WA0014.jpg',
                width: double.infinity,
              ),
              SizedBox(height: 16.0),
              Text(
                'MOT DU MÉDIATEUR',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              Text(
                'En entrant dans le hall de la Médiature de la République, la première chose qui a accroché mon regard a été la succession des portraits représentant les hommes qui ont animé l’Institution, de sa création le 11 février 1991 à la date de mon entrée en fonction, le 6 août 2021.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Celui de Monsieur Ousmane CAMARA d’abord, le précurseur et concepteur qui a, avec le talent et l’intelligence qui le caractérisent, donné une âme à l’Institution du Médiateur de la République.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'A sa suite, il y a le portrait de Seydou Madani SY, l’ancien recteur de l’université de Dakar et juriste de grande renommée.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'En troisième position, dans ce kaléidoscope, se trouve Doudou NDIR, un haut magistrat doublé d’un grand commis de l’Etat.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Vient ensuite comme dans une alternance voulue et orchestrée au plus haut sommet de l’Etat, un autre éminent membre de la communauté universitaire, le professeur de droit public Serigne DIOP et homme d’Etat au parcours élogieux.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Cinquième dans l’ordre de succession, je m’attarde sur le portrait de feu Alioune Badara CISSÉ, dernier animateur avant moi de l’Institution, arraché à notre affection le 28 août 2021. Comment ne pas se recueillir avec émotion devant ce grand homme, tout de blanc vêtu, qui avait dédié sa vie à la défense de ses semblables ? Puisse le Clément et Miséricordieux l’accueillir en son paradis.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Pour moi, le défilé de mes prédécesseurs en même temps qu’il retrace l’histoire de l’Institution, esquisse la feuille de route du nouveau Médiateur de la République que je suis. En effet, le Médiateur dont l’évocation du nom est associée à la République, ne saurait concevoir sa mission ailleurs que dans le cadre d’un État de droit. Fort heureusement, le Sénégal en est incontestablement un. Et toutes les actions du Médiateur de la République doivent, pour trouver leur pertinence, s’inscrire dans la consolidation de l’Etat de droit.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'L’Etat de droit qui consacre le règne du droit dans la société et l’égalité des citoyens devant la loi. L’Etat de droit qui postule que nul n’est au-dessus de la loi et que toutes les relations au sein de la société sont gouvernées par le droit. L’Etat de droit qui réserve une grande place à l’individu afin de lui permettre, chaque fois que de besoin, de faire valoir ses droits et de contester, s’il y a lieu, l’illégalité ou l’iniquité des actes de la puissance publique.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'L’Etat de droit qui donne le pouvoir au juge de protéger le citoyen en refusant de lui appliquer un texte qu’il estime illégal ou en sanctionnant les agents de l’Etat, auteurs de manquements répréhensibles.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'L’Etat de droit, dans lequel d’autres autorités prolongent ou parachèvent la mission du juge et de l’administration publique en permettant aux administrés de s’adresser à l’auteur d’une illégalité ou à son supérieur hiérarchique pour obtenir réparation.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Au Sénégal comme dans toutes les démocraties du monde, les citoyens peuvent s’adresser au Médiateur de la République et parvenir aux mêmes fins.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Il nous faut donc considérer que l’Etat de droit est un moyen au service d’une ambition qui est l’émergence de la culture de la citoyenneté, imprégnant nos actes de tous les jours. Et c’est à cette condition seulement que nous pourrions lui prédire un avenir dans un contexte social où la violence du discours et des comportements commence à étouffer le débat démocratique.',
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