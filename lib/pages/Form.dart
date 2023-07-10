import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:file_picker/file_picker.dart';

String? _attachmentPath;
final _attachmentController = TextEditingController();

final _emailController = TextEditingController();
final _nomController = TextEditingController();
final _prenomController = TextEditingController();
final _telephoneController = TextEditingController();
final _adresseController = TextEditingController();
final _villeController = TextEditingController();
final _paysController = TextEditingController();
final _descriptionController = TextEditingController();
final _demarchesController = TextEditingController();



void _resetForm() {
  _emailController.clear();
  _nomController.clear();
  _prenomController.clear();
  _telephoneController.clear();
  _adresseController.clear();
  _villeController.clear();
  _paysController.clear();
  _descriptionController.clear();
  _demarchesController.clear();
  _attachmentPath = null; // Réinitialiser la valeur de la pièce jointe

}

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);


  @override
  _FormPageState createState() => _FormPageState();



}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xFF006400),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Envoyer une réclamation',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 4.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Adresse email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre adresse email';
                        }
                        if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                          return 'Veuillez entrer une adresse email valide';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _nomController,
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre nom';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _prenomController,
                      decoration: InputDecoration(
                        labelText: 'Prénom',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre prénom';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _telephoneController,
                      decoration: InputDecoration(
                        labelText: 'Téléphone',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        final RegExp phoneRegex = RegExp(r'^\+?[0-9]{10,12}$');
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre numéro de téléphone';
                        } else if (!phoneRegex.hasMatch(value)) {
                          return 'Le format de téléphone est incorrect';
                        }
                        return null;
                      },

                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      maxLines: null,
                      controller: _adresseController,
                      decoration: InputDecoration(
                        labelText: 'Adresse',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre adresse';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _villeController,
                      decoration: InputDecoration(
                        labelText: 'Ville',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre ville';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                        controller: _paysController,
                        decoration: InputDecoration(
                          labelText: 'Pays',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez entrer votre pays';
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 16.0,),
                    TextFormField(
                      maxLines: null,
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        labelText: 'Description de la plainte',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer une description';
                        }
                        return null;
                      },

                    ),

                    SizedBox(height: 16.0,),
                    TextFormField(
                        maxLines: null,
                        controller: _demarchesController,
                        decoration: InputDecoration(
                          labelText: 'Démarches effectuées',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value){
                          if (value== null || value.isEmpty){
                            return "Veuillez renseigne ce champ ";
                          }
                          return null;
                        }
                    ),

                    TextButton(
                      onPressed: () async {
                        FilePickerResult? result = await FilePicker.platform.pickFiles();
                        if (result != null) {
                          String? filePath = result.files.single.path;
                          if (filePath != null) {
                            setState(() {
                              _attachmentPath = filePath;
                            });
                          }
                        }
                      },
                      child: Text('Sélectionner une pièce jointe'),
                    ),
                    Text(_attachmentPath != null ? 'Fichier sélectionné: $_attachmentPath' : ''),
                    SizedBox(height: 16.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            // Envoyer les informations du formulaire
                             sendMail(context);
                            _resetForm(); // réinitialiser les champs du formulaire
                          }
                        },
                        child: Text('Envoyer'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF006400), // Couleur de fond du bouton
                          textStyle: TextStyle(color: Colors.white), // Couleur du texte
                        ),
                      ),
                    ),
                  ]
              )
          ),
        ),
      ),
    );

  }
}


void sendMail(BuildContext context) async {
  String username = 'senegalconnect.com@gmail.com';
  String password = 'dihkeiqptaftwsbr';

  final smtpServer = gmail(username, password);
  final file = File(_attachmentPath!);
  final attachment = FileAttachment(file);





  // Créer un objet Message
  final message = Message()
    ..from = Address('senegalconnect.com@gmail.com', 'Application Mobile')
    ..recipients.add('mediateur@mediaturedelarepublique.sn')
    ..ccRecipients.addAll(['mame.khady.samb@gmail.com'])
    ..subject = 'Nouveau Message pour le Médiateur :: ${DateTime.now()}';

// Ajouter la pièce jointe au message
  message.attachments.add(attachment);

// Personnaliser le contenu du message avec les valeurs des contrôleurs
  message.text = '''
  Adresse email: ${_emailController.text}
  Nom: ${_nomController.text}
  Prénom: ${_prenomController.text}
  Téléphone: ${_telephoneController.text}
  Adresse: ${_adresseController.text}
  Ville: ${_villeController.text}
  Pays: ${_paysController.text}
  Description de la plainte: ${_descriptionController.text}
  Démarches effectuées: ${_demarchesController.text}
  Pièce jointe: $_attachmentPath
''';

  message.html = '''
  <h2>Nouveau Message pour le Médiateur</h2>
  <p>Adresse email: ${_emailController.text}</p>
  <p>Nom: ${_nomController.text}</p>
  <p>Prénom: ${_prenomController.text}</p>
  <p>Téléphone: ${_telephoneController.text}</p>
  <p>Adresse: ${_adresseController.text}</p>
  <p>Ville: ${_villeController.text}</p>
  <p>Pays: ${_paysController.text}</p>
  <p>Description de la plainte: ${_descriptionController.text}</p>
  <p>Démarches effectuées: ${_demarchesController.text}</p>
  <p>Pièce jointe: $_attachmentPath</p>
''';


  try {
    // Send the email
    final sendReport = await send(message, smtpServer);
    print('Message sent: ' + sendReport.toString());

    // Show a success message and reset the form
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Email sent successfully'),
        backgroundColor: Colors.green,
      ),
    );
    _resetForm();
  } catch (e) {
    // Show an error message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error sending email: $e'),
        backgroundColor: Colors.red,
      ),
    );
  }
}



