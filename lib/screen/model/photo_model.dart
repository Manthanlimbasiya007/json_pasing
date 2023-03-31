class PhotoModel {
  int? id;
  String? title;

  PhotoModel({this.id,  this.title});

  PhotoModel fromJson(Map m1) {
    id = m1['id'];

    title = m1['title'];

    PhotoModel p1 = PhotoModel(id: id, title: title);
    return p1;
  }
}