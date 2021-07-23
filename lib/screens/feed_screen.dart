import 'package:first_experience/widgets/feed_app_bar.dart';
import 'package:first_experience/widgets/post_widget.dart';
import 'package:first_experience/widgets/stories_list.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: FeedAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            StoriesList(),
            PostWidget(),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}
