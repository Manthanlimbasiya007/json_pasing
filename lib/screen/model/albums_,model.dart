class AlbumsModel {
  int?  userId;
  String? title;

  AlbumsModel({ this.title, this.userId});

  AlbumsModel fromJson(Map m1) {
    userId = m1['userId'];
    title = m1['title'];
    AlbumsModel a1 = AlbumsModel( title: title, userId: userId);
    return a1;
  }
}