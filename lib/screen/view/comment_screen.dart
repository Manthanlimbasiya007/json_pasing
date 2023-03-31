import 'package:flutter/material.dart';
import 'package:json_pasing/screen/provider/comment_provider.dart';
import 'package:json_pasing/screen/provider/post_provider.dart';
import 'package:provider/provider.dart';

class commentscreen extends StatefulWidget {
  const commentscreen({Key? key}) : super(key: key);

  @override
  State<commentscreen> createState() => _commentscreenState();
}

class _commentscreenState extends State<commentscreen> {
  CommentProvider? commentProviderTrue;
  CommentProvider? commentProviderFalse;

  @override
  Widget build(BuildContext context) {
    commentProviderFalse = Provider.of<CommentProvider>(context, listen: false);
    commentProviderTrue = Provider.of<CommentProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                commentProviderFalse!.jsonParsing();
              }, child: Text("show down"),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${commentProviderTrue!.commentList[index].id}"),
                      subtitle:
                      Text("${commentProviderTrue!.commentList[index].body}"),
                    );
                  },
                  itemCount: commentProviderTrue!.commentList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
