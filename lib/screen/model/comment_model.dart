class CommentModel {
  int? id;
  String?  body;

  CommentModel({this.id, this.body});

  CommentModel fromJson(Map m1) {
    id = m1['id'];
    body = m1['body'];
    CommentModel c1 = CommentModel(id: id, body: body);
    return c1;
  }
}
