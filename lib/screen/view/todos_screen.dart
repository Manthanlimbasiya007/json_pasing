import 'package:flutter/material.dart';
import 'package:json_pasing/screen/provider/post_provider.dart';
import 'package:provider/provider.dart';

import '../provider/todos_provider.dart';

class todosscreen extends StatefulWidget {
  const todosscreen({Key? key}) : super(key: key);

  @override
  State<todosscreen> createState() => _todosscreenState();
}

class _todosscreenState extends State<todosscreen> {
  TodosProvider? todosProviderTrue;
  TodosProvider? todosProviderFalse;

  @override
  Widget build(BuildContext context) {
    todosProviderFalse = Provider.of<TodosProvider>(context, listen: false);
    todosProviderTrue = Provider.of<TodosProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                todosProviderFalse!.jsonParsing();
              }, child: Text("show down"),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${todosProviderTrue!.todosList[index].userId}"),
                      subtitle:
                      Text("${todosProviderTrue!.todosList[index].title}"),
                    );
                  },
                  itemCount: todosProviderTrue!.todosList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
