import 'package:flutter/material.dart';
class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Blog'),
      ),
    );
  }
}
