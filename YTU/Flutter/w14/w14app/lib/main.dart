import 'package:flutter/material.dart';
import 'package:w14app/service_manager.dart';
import 'todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final ServiceManager _todoService = ServiceManager();
  List<Todo> _todos = [];
  final TextEditingController _titleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchTodos();
  }

  _fetchTodos() async {
    _todos = await _todoService.getTodos();
    setState(() {});
  }

  _showAddOrUpdateDialog({Todo? todo}) {
    if (todo != null) {
      _titleController.text = todo.title;
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(todo == null ? 'Add Todo' : 'Update Todo'),
          content: TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
                _titleController.clear();
              },
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () async {
                if (todo != null) {
                  await _todoService.updateTodo(Todo(
                    id: todo.id,
                    title: _titleController.text,
                    completed: todo.completed,
                  ));
                } else {
                  await _todoService.addTodo(Todo(
                    id: DateTime.now().millisecondsSinceEpoch,
                    title: _titleController.text,
                    completed: false,
                  ));
                }
                _titleController.clear();
                Navigator.of(context).pop();
                _fetchTodos();
              },
            ),
          ],
        );
      },
    );
  }

  _showDeleteConfirmationDialog(Todo todo) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Todo'),
          content: Text('Are you sure you want to delete this todo?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Delete'),
              onPressed: () async {
                await _todoService.deleteTodo(todo.id!);
                Navigator.of(context).pop();
                _fetchTodos();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          final todo = _todos[index];
          return ListTile(
            title: Text(todo.title),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _showAddOrUpdateDialog(todo: todo),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _showDeleteConfirmationDialog(todo),
                ),
              ],
            ),
            onTap: () => _showAddOrUpdateDialog(todo: todo),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddOrUpdateDialog(),
        child: Icon(Icons.add),
      ),
    );
  }
}
