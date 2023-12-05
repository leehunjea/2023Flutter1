import 'package:ch11/ToDO.dart';
import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final _items = <ToDo>[];
  var _toDoController = TextEditingController();

  void dispose(){
    _toDoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할일'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: TextField(
                  controller: _toDoController,
                ),
            ),
            ElevatedButton(
                onPressed: () => _addToDo(ToDo(_toDoController.text)),
                child: Text('추가'),
            ),
            Expanded(
              child:ListView(
                children: _items.map((todo) => _buildiTemWidget(todo)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildiTemWidget(ToDo todo){
    return ListTile(
      onTap: (){},
      title: Text(
        todo.title,
        style: todo.isDone? TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
        :null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
          onPressed: (){},
      ),
    );
  }

  void _addToDo(ToDo todo){
    setState(() {
      _items.add(todo);
      _toDoController.text = '';
    });
  }
}
