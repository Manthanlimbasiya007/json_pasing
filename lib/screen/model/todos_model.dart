class TodosModel {
  int? userId;
  String? title;

  TodosModel({this.title, this.userId});

  TodosModel fromJson(Map m1) {

    userId = m1['userId'];
    title = m1['title'];

    TodosModel t1 = TodosModel( title: title, userId: userId);
    return t1;
  }
}