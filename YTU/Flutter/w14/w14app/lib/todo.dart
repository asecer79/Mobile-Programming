/*{
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  },
*/


//model class / entity
class Todo {
  int? id;
  int? userId;
  String title;
  bool completed;

  Todo({
    this.id,
    this.userId,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toJson() {
    return {
      "userId": id,
      "id": id,
      "title": title,
      "completed": false,
    };
  }

  //json = map
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json["id"],
      userId: json["userId"],
      title: json["title"],
      completed: json["completed"],
    );
  }
}
