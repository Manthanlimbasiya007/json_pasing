import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_pasing/screen/provider/albums_provider.dart';
import 'package:json_pasing/screen/provider/comment_provider.dart';
import 'package:json_pasing/screen/provider/photo_provider.dart';
import 'package:json_pasing/screen/provider/post_provider.dart';
import 'package:json_pasing/screen/provider/todos_provider.dart';
import 'package:json_pasing/screen/view/albums_screen.dart';
import 'package:json_pasing/screen/view/comment_screen.dart';
import 'package:json_pasing/screen/view/home_screen.dart';
import 'package:json_pasing/screen/view/photo_screen.dart';
import 'package:json_pasing/screen/view/todos_screen.dart';
import 'package:provider/provider.dart';

import 'screen/view/post_screen.dart';

void main()
{
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => PostProvider()),
      ChangeNotifierProvider( create: (context) => PhotoProvider()),
      ChangeNotifierProvider(create: (context) => CommentProvider()),
      ChangeNotifierProvider( create: (context) => TodosProvider()),
      ChangeNotifierProvider(  create: (context) =>AlbumsProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => homescreen(),
        'post':(context) => postscreen(),
        'albums':(context) => albumsscreen(),
        'comment':(context) => commentscreen(),
        'photo':(context) => photoscreen(),
        'todos':(context) => todosscreen(),
      },
    ),
  ));
}