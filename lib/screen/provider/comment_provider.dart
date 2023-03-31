import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_pasing/screen/model/comment_model.dart';
import 'package:json_pasing/screen/model/post_model.dart';

class CommentProvider extends ChangeNotifier
{
  List<dynamic> commentList =[];

  Future<void> jsonParsing()
  async{
    String jsonDataString = await rootBundle.loadString("assets/json/chat.json");
    var json = jsonDecode(jsonDataString);


    List<dynamic> commentModelList= json.map((e)=>CommentModel().fromJson(e)).toList();
    commentList = commentModelList;
    notifyListeners();
  }
}