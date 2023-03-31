import 'package:flutter/material.dart';
import 'package:json_pasing/screen/provider/post_provider.dart';
import 'package:provider/provider.dart';

import '../provider/photo_provider.dart';

class photoscreen extends StatefulWidget {
  const photoscreen({Key? key}) : super(key: key);

  @override
  State<photoscreen> createState() => _photoscreenState();
}

class _photoscreenState extends State<photoscreen> {
  PhotoProvider? photoProviderTrue;
  PhotoProvider? photoProviderFalse;

  @override
  Widget build(BuildContext context) {
   photoProviderFalse = Provider.of<PhotoProvider>(context, listen: false);
    photoProviderTrue = Provider.of<PhotoProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                photoProviderFalse!.jsonParsing();
              }, child: Text("show down"),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${photoProviderTrue!.photoList[index].id}"),
                      subtitle:
                      Text("${photoProviderTrue!.photoList[index].title}"),
                    );
                  },
                  itemCount: photoProviderTrue!.photoList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
