import 'package:flutter/material.dart';
import 'package:labprogram/lab_8/temp.dart';
import 'package:labprogram/lecture_design_0201/list/user_list_file.dart';
import 'package:labprogram/lecture_design_0201/login/launch_page.dart';
import 'package:labprogram/lecture_design_0201/login/pre_login_page.dart';
import 'package:labprogram/lecture_tabbar_1501/tab_detail_view.dart';

class BottomBarPage extends StatefulWidget {
  BottomBarPage({super.key});

  @override
  State<BottomBarPage> createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int selectedBottomIndex = 0;
  List<Widget> pages = [
    UserEntryFormPage(),
    UserListPage(),
    LaunchPage(),
    PreLoginPage(),
    TabDetailView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomBar Demo"),
      ),
      body: pages[selectedBottomIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectedBottomIndex = index;
            });
          },
          currentIndex: selectedBottomIndex,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.yellow,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.greenAccent,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.timeline),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.deepOrange,
              icon: Icon(Icons.camera),
              label: 'Upload Image',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.verified_user),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.call),
              label: 'Calls',
            )
          ]
      ),
    );
  }
}

//khali ek icon aapi to error batave k ek rakhine tame suj kari leso so put multiple

//
// import 'package:btech_sem_4_2024/design/add_edit/user_entry_form.dart';
// import 'package:btech_sem_4_2024/design/login/launch_page.dart';
// import 'package:btech_sem_4_2024/design/login/pre_login_page.dart';
// import 'package:btech_sem_4_2024/design/page_view/flutter_page_view.dart';
// import 'package:btech_sem_4_2024/design/tab_bar/drawer_page.dart';
// import 'package:flutter/material.dart';
//
// class BottomBarPage extends StatefulWidget {
//   BottomBarPage({super.key});
//
//   @override
//   State<BottomBarPage> createState() => _BottomBarPageState();
// }
//
// class _BottomBarPageState extends State<BottomBarPage> {
//   int selectedBottomIndex = 0;
//   List<Widget> pages = [
//     FlutterPageView(),
//     DrawerPage(),
//     PreLoginPage(),
//     LaunchPage(),
//     UserEntryFormPage(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BottomBar Demo'),
//       ),
//       body: pages[selectedBottomIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (index) {
//           setState(() {
//             selectedBottomIndex = index;
//           });
//         },
//         currentIndex: selectedBottomIndex,
//         type: BottomNavigationBarType.shifting,
//         backgroundColor: Colors.yellow,
//         selectedItemColor: Colors.yellow,
//         unselectedItemColor: Colors.greenAccent,
//         items: [
//           BottomNavigationBarItem(
//             backgroundColor: Colors.purple,
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.blue,
//             icon: Icon(Icons.timeline),
//             label: 'Updates',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.deepOrange,
//             icon: Icon(Icons.camera),
//             label: 'Upload Image',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.red,
//             icon: Icon(Icons.verified_user),
//             label: 'Community',
//           ),
//           BottomNavigationBarItem(
//             backgroundColor: Colors.black,
//             icon: Icon(Icons.call),
//             label: 'Calls',
//           ),
//         ],
//       ),
//     );
//   }
// }
