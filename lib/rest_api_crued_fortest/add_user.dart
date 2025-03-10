import 'package:flutter/material.dart';
import 'package:labprogram/rest_api_crued_fortest/crud_database_api.dart';


class AddUser extends StatefulWidget {
  final Map<String, dynamic>? user;

  const AddUser({Key? key, this.user}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      _nameController.text = widget.user!['name'];
      _emailController.text = widget.user!['email'];
    }
  }

  void _saveUser() async {
    if (_formKey.currentState!.validate()) {
      if (widget.user == null) {
        // Add new user
        await apiService.addTodo(_nameController.text, _emailController.text);
      } else {
        // Update existing user
        await apiService.editTodo(
            widget.user!['id'], _nameController.text, _emailController.text);
      }
      Navigator.pop(context, true); // Return true to refresh user list
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.user == null ? 'Add User' : 'Edit User'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) =>
                value!.isEmpty ? 'Please enter a name' : null,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) =>
                value!.isEmpty ? 'Please enter an email' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveUser,
                child: Text(widget.user == null ? 'Add User' : 'Update User'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
