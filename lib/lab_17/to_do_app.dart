// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class To_Do_App extends StatefulWidget {
//   const To_Do_App({super.key});
//
//
//
//   @override
//   State<To_Do_App> createState() => _To_Do_AppState();
// }
//
// class _To_Do_AppState extends State<To_Do_App> {
//
//   Future? userFuture;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("To Do List"),
//       ),
//       body: FutureBuilder(
//           future: userFuture!,
//         builder: (context, snapshot) {
//         if (snapshot.hasData){
//
//         }
//     }
//
//     ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:labprogram/lab_17/to_do_database.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Database_todo dbHelper = Database_todo();
  List<Map<String, dynamic>> tasks = [];

  @override
  void initState() {
    super.initState();
    loadTasks();
  }

  void loadTasks() async {
    List<Map<String, dynamic>> fetchedTasks = await dbHelper.getTasks();
    setState(() {
      tasks = fetchedTasks;
    });
  }

  void deleteTask(int id) async {
    await dbHelper.deleteTask(id: id);
    loadTasks(); // Refresh the task list
  }

  void _showAddTaskDialog(BuildContext context) {
    final titleController = TextEditingController();
    final descController = TextEditingController();
    final prioController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add New Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: titleController, decoration: InputDecoration(labelText: 'Title')),
              TextField(controller: descController, decoration: InputDecoration(labelText: 'Description')),
              TextField(controller: prioController, decoration: InputDecoration(labelText: 'Priority'), keyboardType: TextInputType.number),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
            ElevatedButton(
              onPressed: () async {
                if (titleController.text.isNotEmpty && prioController.text.isNotEmpty) {
                  await dbHelper.addTask(
                    title: titleController.text,
                    desc: descController.text,
                    prio: int.parse(prioController.text),
                  );
                  titleController.clear();
                  descController.clear();
                  prioController.clear();
                  Navigator.pop(context);
                  loadTasks(); // refresh list after adding task
                }
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: tasks.isEmpty
          ? Center(child: Text('No tasks available.'))
          : ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          var task = tasks[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(task['TITLE']),
              subtitle: Text(task['DESCRI'] ?? 'No description'),
              trailing: Text('Priority: ${task['PRIO']}'),
              onLongPress: () {
                deleteTask(task['ID']);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTaskDialog(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
