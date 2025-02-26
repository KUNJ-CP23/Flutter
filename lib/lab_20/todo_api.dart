import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labprogram/lab_20/rest_api.dart';

class TodoApi extends StatefulWidget {
  const TodoApi({super.key});

  @override
  State<TodoApi> createState() => _TodoApiState();
}

class _TodoApiState extends State<TodoApi> {
  ApiService apiTodo = ApiService();
  List<dynamic> _tasks = [];

  @override
  void initState() {
    super.initState();
  }

  //refresh the task list
  void _refreshTasks() async {
    List tasks = await apiTodo.getAllToDo();
    setState(() {
      _tasks = tasks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO WITH API'),
      ),
      body: FutureBuilder(
        future: apiTodo.getAllToDo(),
        builder: (context, snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          else if(snapshot.hasData){
            List<dynamic> data=snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text(data[index]['desc']),
                );
              },
            );
          }
          else{
            print('NO TODO FOUND');
          }
          return CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTaskDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddTaskDialog(BuildContext context) {
    final titleController = TextEditingController();
    final descController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add New Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: descController,
                decoration: InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (titleController.text.isNotEmpty) {
                  await apiTodo.addTodo(
                    titleController.text,
                    descController.text,
                  );
                  _refreshTasks();
                  Navigator.pop(context);
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}




