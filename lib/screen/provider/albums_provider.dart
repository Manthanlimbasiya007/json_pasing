import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_pasing/screen/model/post_model.dart';

import '../model/albums_,model.dart';

class AlbumsProvider extends ChangeNotifier
{
  List<dynamic> albumsList =[];

  Future<void> jsonParsing()
  async{
    String jsonDataString = await rootBundle.loadString("assets/json/albums.json");
    var json = jsonDecode(jsonDataString);


    List<dynamic> albumsModelList= json.map((e)=>AlbumsModel().fromJson(e)).toList();
    albumsList = albumsModelList;
    notifyListeners();
  }
}