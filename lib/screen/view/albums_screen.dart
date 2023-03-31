import 'package:flutter/material.dart';
import 'package:json_pasing/screen/provider/post_provider.dart';
import 'package:provider/provider.dart';

import '../provider/albums_provider.dart';

class albumsscreen extends StatefulWidget {
  const albumsscreen({Key? key}) : super(key: key);

  @override
  State<albumsscreen> createState() => _albumsscreenState();
}

class _albumsscreenState extends State<albumsscreen> {
  AlbumsProvider? albumsProviderTrue;
  AlbumsProvider? albumsProviderFalse;

  @override
  Widget build(BuildContext context) {
    albumsProviderFalse = Provider.of<AlbumsProvider>(context, listen: false);
    albumsProviderTrue = Provider.of<AlbumsProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                albumsProviderFalse!.jsonParsing();
              }, child: Text("show down"),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${albumsProviderTrue!.albumsList[index].userId}"),
                      subtitle:
                      Text("${albumsProviderTrue!.albumsList[index].title}"),
                    );
                  },
                  itemCount: albumsProviderTrue!.albumsList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
