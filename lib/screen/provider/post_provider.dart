import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_pasing/screen/model/post_model.dart';

class PostProvider extends ChangeNotifier
{
  List<dynamic> postList =[];

  Future<void> jsonParsing()
  async{
    String jsonDataString = await rootBundle.loadString("assets/json/post.json");
    var json = jsonDecode(jsonDataString);


    List<dynamic> postModelList= json.map((e)=>PostModel().fromJson(e)).toList();
    postList = postModelList;
    notifyListeners();
  }
}