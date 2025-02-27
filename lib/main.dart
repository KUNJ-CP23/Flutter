import 'package:flutter/material.dart';
import 'package:labprogram/crud_TB/addUser.dart';
import 'package:labprogram/crud_TB/userList.dart';
import 'package:labprogram/cruddemobymyself/cruddemo.dart';
import 'package:labprogram/database_crud/database_crud.dart';
import 'package:labprogram/lab_11/grid_list_buttom.dart';
import 'package:labprogram/lab_12/date_format_3.dart';
import 'package:labprogram/lab_13/bottom_navigation_bar.dart';
import 'package:labprogram/lab_13/bottomvadisheet_1.dart';
import 'package:labprogram/lab_17/to_do_app.dart';
import 'package:labprogram/lab_20/todo_api.dart';
import 'package:labprogram/lab_6/1.dart';
import 'package:labprogram/lab_6/2.dart';
import 'package:labprogram/lab_6/3_1.dart';
import 'package:labprogram/lab_6/3_2.dart';
import 'package:labprogram/lab_6/flut_demo.dart';
import 'package:labprogram/lab_6/lay_ex1.dart';
import 'package:labprogram/lab_6_1/lay1.dart';
import 'package:labprogram/lab_7/controller_3.dart';
import 'package:labprogram/lab_7/controller_3_2.dart';
import 'package:labprogram/lab_7/custom_2.dart';
import 'package:labprogram/lab_7/text_1.dart';
import 'package:labprogram/lab_7/txtfld_onclick_5.dart';
import 'package:labprogram/lab_8/dicetwo_5.dart';
import 'package:labprogram/lab_8/form_extra.dart';
import 'package:labprogram/lab_8/imagass_1_2.dart';
import 'package:labprogram/lab_8/imgass_1.dart';
import 'package:labprogram/lab_8/splash_scree.dart';
import 'package:labprogram/lab_9/bdaynavigation.dart';
import 'package:labprogram/lab_tab_last/list_tab.dart';
import 'package:labprogram/lab_tab_last/listdemolearn.dart';
import 'package:labprogram/lab_tab_last/tabview_basic.dart';
import 'package:labprogram/lecture_design_0201/list/user_list_file.dart';
import 'package:labprogram/lecture_design_0201/login/user_login_registration.dart';
import 'package:labprogram/lecture_design_2612/launch_page.dart';
import 'package:labprogram/lecture_design_2612/user_entry_form.dart';
import 'package:labprogram/lab_7/textfield_4.dart';
import 'package:labprogram/lecture_tabbar_1501/flutter_tab_bar.dart';
import 'package:labprogram/lecture_tdrawpage_1601/bottom_bar/bottom_bar_page.dart';
import 'package:labprogram/lecture_tdrawpage_1601/page_view/flutter_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Tab_view_list(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
