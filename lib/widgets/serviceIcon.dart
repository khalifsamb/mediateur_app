import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_balance_outlined),
              SizedBox(height: 8.0),
              Text('Le Médiateur'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_alert_outlined),
              SizedBox(height: 8.0),
              Text(" Domaine d'action"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.build_outlined),
              SizedBox(height: 8.0),
              Text('Service 3'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calculate_outlined),
              SizedBox(height: 8.0),
              Text('Service 4'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_today_outlined),
              SizedBox(height: 8.0),
              Text('Service 5'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat_outlined),
              SizedBox(height: 8.0),
              Text('Service 6'),
            ],
          ),
        ],
      ),
    );
  }
}
