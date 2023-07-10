import 'package:flutter/material.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:flutter_html/flutter_html.dart';
import 'package:mediature/pages/PostDetail.dart';

class PostListPage extends StatefulWidget {
  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  List<wp.Post> posts = [];

  Future<void> getPosts() async {
    wp.WordPress wordPress = wp.WordPress(
      baseUrl: 'http://mediaturedelarepublique.sn',
    );

    List<wp.Post> fetchedPosts = await wordPress.fetchPosts(
      postParams: wp.ParamsPostList(
        context: wp.WordPressContext.view,
        pageNum: 1,
        perPage: 30,
      ),
      fetchAuthor: true,
      fetchFeaturedMedia: true,
    );

    if (mounted) {
      setState(() {
        posts = fetchedPosts;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activités de la Médiature'),
        backgroundColor: Color(0xFF006400),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
          },
          child: Icon(Icons.arrow_back),
        ),

      ),


    body: posts.isEmpty
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        wp.Post post = posts[index];
        SizedBox(
          height: 30.0,
          child: Text(
              "Activités de l'Institution",style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,color: Color(0xFF006400))),
        );
        return Card(
          child: ListTile(
            leading: post.featuredMedia != null
                ? Image.network(post.featuredMedia.sourceUrl)
                : null,
            title: Html(
              data: post.title.rendered,
              style: {
                'html': Style(
                  fontSize: FontSize(14.0),
                  fontWeight: FontWeight.bold,
                ),
              },
            ),
            subtitle: Text(post.date.toString()),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostDetail(
                    post: post,
                  ),
                ),
              );
            },
          ),
        );
      },
    ),
    );
  }
}
