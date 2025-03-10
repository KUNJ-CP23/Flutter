import 'package:flutter/material.dart';
import 'package:labprogram/rest_api_crued_fortest/crud_database_api.dart';

import 'add_user.dart';

class UserListAPi extends StatefulWidget {
  const UserListAPi({super.key});

  @override
  State<UserListAPi> createState() => _UserListState();
}

class _UserListState extends State<UserListAPi> {
  ApiService apiService = ApiService();
  List<dynamic> _users = [];

  @override
  void initState() {
    super.initState();
    _refreshUsers();
  }

  // Refresh the user list
  void _refreshUsers() async {
    List users = await apiService.getAllToDo();
    setState(() {
      _users = users;
    });
  }

  // Show confirmation dialog before deleting
  void _confirmDelete(String id) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Delete'),
          content: Text('Are you sure you want to delete this user?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                await apiService.deleteTodo(id);
                _refreshUsers();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  // Navigate to Add/Edit User Page
  void _navigateToAddUser({Map<String, dynamic>? user}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddUser(user: user)),
    );

    if (result == true) {
      _refreshUsers(); // Refresh list after adding or editing user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: _users.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          var user = _users[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(user['name']),
              subtitle: Text('${user['email']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => _navigateToAddUser(user: user),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _confirmDelete(user['id']),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAddUser(),
        child: Icon(Icons.add),
      ),
    );
  }
}
