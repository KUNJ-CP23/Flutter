import 'package:lab_programs/lecture_design_0201/add_edit/user_entry_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserListPage extends StatefulWidget {
  UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<String> userList = [
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User',
    'USER',
    'User',
    'User',
    'User'
  ];

  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'User List',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isGrid = false;
                });
              },
              icon: Icon(
                Icons.list,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  isGrid = true;
                });
              },
              icon: Icon(
                Icons.grid_3x3,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return UserEntryFormPage();
                  },
                ));
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
      body: isGrid
          ? GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          print(':::GRID ITEM BUILDER CALLED:::$index');
          return getListGridItem(index);
        },
        itemCount: userList.length,
        // children: getListItem(),
      )
          : ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          print(':::LISTVIEW ITEM BUILDER CALLED:::$index');
          return getListGridItem(index);
        },
        itemCount: userList.length,
      ),
    );
  }

  List<Widget> getListItem() {
    List<Widget> widgets = [];
    for (int i = 0; i < userList.length; i++) {
      print(':::GRID ITEM BUILDER CALLED:::$i');
      widgets.add(getListGridItem(i));
    }
    return widgets;
  }

  Widget getListGridItem(i) {
    return Card(
      elevation: 10,
      child: ListTile(
        onTap: () {},
        leading: Image.asset('assets/images/download.jpeg'),
        trailing: Wrap(
          alignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.red,
                size: 25,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade500,
            ),
          ],
        ),
        title: Wrap(
          direction: Axis.vertical,
          children: [
            Text(
              '${userList[i]} $i',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            Text('DATA')
          ],
        ),
      ),
    );
  }
}
