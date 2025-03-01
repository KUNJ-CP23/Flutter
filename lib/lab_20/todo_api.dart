// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:labprogram/lab_20/rest_api.dart';
//
// class TodoApi extends StatefulWidget {
//   const TodoApi({super.key});
//
//   @override
//   State<TodoApi> createState() => _TodoApiState();
// }
//
// class _TodoApiState extends State<TodoApi> {
//   ApiService apiTodo = ApiService();
//   List<dynamic> _tasks = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _refreshTasks();
//   }
//
//   //refresh the task list
//   void _refreshTasks() async {
//     List tasks = await apiTodo.getAllToDo();
//     setState(() {
//       _tasks = tasks;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TODO WITH API'),
//       ),
//       body: FutureBuilder(
//         future: apiTodo.getAllToDo(),
//         builder: (context, snapshot){
//           if(snapshot.connectionState==ConnectionState.waiting){
//             return CircularProgressIndicator();
//           }
//           else if(snapshot.hasData){
//             List<dynamic> data=snapshot.data!;
//             return ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(data[index]['title']),
//                   subtitle: Text(data[index]['desc']),
//                 );
//               },
//             );
//           }
//           else{
//             print('NO TODO FOUND');
//           }
//           return CircularProgressIndicator();
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showAddTaskDialog(context);
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
//
//   void _showAddTaskDialog(BuildContext context) {
//     final titleController = TextEditingController();
//     final descController = TextEditingController();
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Add New Task'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: titleController,
//                 decoration: InputDecoration(labelText: 'Title'),
//               ),
//               TextField(
//                 controller: descController,
//                 decoration: InputDecoration(labelText: 'Description'),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Cancel'),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 if (titleController.text.isNotEmpty) {
//                   await apiTodo.addTodo(
//                     titleController.text,
//                     descController.text,
//                   );
//                   _refreshTasks();
//                   Navigator.pop(context);
//                 }
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


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
    _refreshTasks();
  }

  // Refresh the task list
  void _refreshTasks() async {
    List tasks = await apiTodo.getAllToDo();
    setState(() {
      _tasks = tasks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TODO WITH API')),
      body: _tasks.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_tasks[index]['title']),
            subtitle: Text(_tasks[index]['desc']),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () => _showEditTaskDialog(
                    context,
                    _tasks[index]['id'],
                    _tasks[index]['title'],
                    _tasks[index]['desc'],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _deleteTask(_tasks[index]['id']),
                ),
              ],
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

  // Show Add Task Dialog
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
              TextField(controller: titleController, decoration: InputDecoration(labelText: 'Title')),
              TextField(controller: descController, decoration: InputDecoration(labelText: 'Description')),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
            ElevatedButton(
              onPressed: () async {
                if (titleController.text.isNotEmpty) {
                  await apiTodo.addTodo(titleController.text, descController.text);
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

  // Show Edit Task Dialog
  void _showEditTaskDialog(BuildContext context, String id, String title, String desc) {
    final titleController = TextEditingController(text: title);
    final descController = TextEditingController(text: desc);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(controller: titleController, decoration: InputDecoration(labelText: 'Title')),
              TextField(controller: descController, decoration: InputDecoration(labelText: 'Description')),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
            ElevatedButton(
              onPressed: () async {
                if (titleController.text.isNotEmpty) {
                  await apiTodo.editTodo(id, titleController.text, descController.text);
                  _refreshTasks();
                  Navigator.pop(context);
                }
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  // Delete Task
  void _deleteTask(String id) async {
    await apiTodo.deleteTodo(id);
    _refreshTasks();
  }
}
