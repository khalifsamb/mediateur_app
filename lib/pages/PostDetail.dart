import 'package:flutter/material.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:share/share.dart';

class PostDetail extends StatefulWidget {
  final wp.Post post;

  PostDetail({required this.post, Key? key}) : super(key: key ?? ValueKey(post.id));

  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    wp.Post post = widget.post;

    return Scaffold(

      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0xFF006400),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            post.featuredMedia != null
                ? Image.network(
              post.featuredMedia.sourceUrl,
              fit: BoxFit.cover,
            )
                : SizedBox(),
            SizedBox(height: 0.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(post.title.rendered , style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 4.0),
                Text(DateTime.parse(post.date).toLocal().toString().substring(0, 10).split('-').reversed.join('/')), // affichage de la date au format d/m/y
                SizedBox(width: 16.0),
                Icon(Icons.category),
                SizedBox(width: 4.0),
                Expanded(
                  child: Text(
                    post.categories != null ? post.categories.map((category) => category.name).join(", ") : "",
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Html(
                data: post.content.rendered,
                style: {
                  'html': Style(
                    fontSize: FontSize(18.0),
                  ),
                },
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Share.share(post.title.rendered + '\n\n' + post.link);
                },
                icon: Icon(Icons.share,color: Color(0xFF006400),),
                label: Text('Partager'),
              ),
            ),

          ],

        ),
      ),
    );
  }
}


