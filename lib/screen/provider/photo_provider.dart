import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_pasing/screen/model/post_model.dart';

import '../model/photo_model.dart';

class PhotoProvider extends ChangeNotifier
{
  List<dynamic> photoList =[];

  Future<void> jsonParsing()
  async{
    String jsonDataString = await rootBundle.loadString("assets/json/pic.json");
    var json = jsonDecode(jsonDataString);


    List<dynamic> photoModelList= json.map((e)=>PhotoModel().fromJson(e)).toList();
    photoList = photoModelList;
    notifyListeners();
  }
}