import 'package:flutter/material.dart';
import 'package:json_pasing/screen/view/albums_screen.dart';
import 'package:json_pasing/screen/view/comment_screen.dart';
import 'package:json_pasing/screen/view/photo_screen.dart';
import 'package:json_pasing/screen/view/post_screen.dart';
import 'package:json_pasing/screen/view/todos_screen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Json Parsing"),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("post"),
                ),
                Tab(
                  child: Text("comment"),
                ),Tab(
                  child: Text("todos"),
                ),Tab(
                  child: Text("albums"),
                ),Tab(
                  child: Text("photo"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              postscreen(),
              commentscreen(),
              todosscreen(),
              albumsscreen(),
              photoscreen(),
            ],
          ),
        ),
      ),
    );
  }
}
