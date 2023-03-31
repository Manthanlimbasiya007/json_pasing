import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_pasing/screen/model/post_model.dart';

import '../model/todos_model.dart';

class TodosProvider extends ChangeNotifier
{
  List<dynamic> todosList =[];

  Future<void> jsonParsing()
  async{
    String jsonDataString = await rootBundle.loadString("assets/json/todos.json");
    var json = jsonDecode(jsonDataString);


    List<dynamic> todosModelList= json.map((e)=>TodosModel().fromJson(e)).toList();
    todosList = todosModelList;
    notifyListeners();
  }
}