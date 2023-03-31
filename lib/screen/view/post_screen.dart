import 'package:flutter/material.dart';
import 'package:json_pasing/screen/provider/post_provider.dart';
import 'package:provider/provider.dart';

class postscreen extends StatefulWidget {
  const postscreen({Key? key}) : super(key: key);

  @override
  State<postscreen> createState() => _postscreenState();
}

class _postscreenState extends State<postscreen> {
  PostProvider? postProviderTrue;
  PostProvider? postProviderFalse;

  @override
  Widget build(BuildContext context) {
    postProviderFalse = Provider.of<PostProvider>(context, listen: false);
    postProviderTrue = Provider.of<PostProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                postProviderFalse!.jsonParsing();
              }, child: Text("show down"),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${postProviderTrue!.postList[index].id}"),
                      subtitle:
                          Text("${postProviderTrue!.postList[index].title}"),
                    );
                  },
                  itemCount: postProviderTrue!.postList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
