import 'package:flutter/material.dart';
import 'package:mediature/pages/postList.dart';

import 'package:flutter/material.dart';
import 'package:mediature/widgets/listViewIcon.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 50,
            ),
            Text(
              'Mediature of the Republic',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: ListViewIcon(),
            ),
          ),
          Expanded(
            child: PostList(),
          ),
        ],
      ),


    );
  }
}
