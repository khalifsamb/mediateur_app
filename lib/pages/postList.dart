import 'package:flutter/material.dart';
import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;
import 'package:flutter_html/flutter_html.dart';
import 'package:mediature/pages/PostDetail.dart';

class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}



class _PostListState extends State<PostList> {
  List<wp.Post> posts = [];

  Future<void> getPosts() async {
    wp.WordPress wordPress = wp.WordPress(
      baseUrl: 'http://mediaturedelarepublique.sn',
    );

    List<wp.Post> fetchedPosts = await wordPress.fetchPosts(
      postParams: wp.ParamsPostList(
        context: wp.WordPressContext.view,
        pageNum: 1,
        perPage: 20,
      ),
      fetchAuthor: true,
      fetchFeaturedMedia: true,
    );

    setState(() {
      posts = fetchedPosts;
    });
  }

  @override
  void initState() {
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return posts.isEmpty
        ? Center(child: CircularProgressIndicator())
        : SingleChildScrollView(
      child: Column(
        children: posts.map((post) {
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
        }).toList(),
      ),
    );

  }
}
