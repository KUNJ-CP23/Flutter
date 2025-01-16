import 'dart:ui';
import 'package:labprogram/lecture_design_0201/login/launch_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:labprogram/lecture_design_0201/login/pre_login_page.dart';
import 'package:labprogram/lecture_tdrawpage_1601/page_view/quiz_page.dart';

class FlutterPageView extends StatefulWidget {
  const FlutterPageView({super.key});

  @override
  State<FlutterPageView> createState() => _FlutterPageViewState();
}

class _FlutterPageViewState extends State<FlutterPageView> {
  List<Map<String, dynamic>> datasets = [
    {
      'Question': 'Hello World Program',
      'Ans1': 'A',
      'Ans2': 'c',
      'Ans3': 'B',
      'Ans4': 'D'
    },
    {
      'Question': 'Hello Data Program',
      'Ans1': 'Abc',
      'Ans2': 'cde',
      'Ans3': 'Btk',
      'Ans4': 'Dgh'
    },
    {
      'Question': 'Hello 3rd Program',
      'Ans1': 'A',
      'Ans2': 'c',
      'Ans3': 'B',
      'Ans4': 'D'
    },
    {
      'Question': 'Hello 4th Program',
      'Ans1': 'A',
      'Ans2': 'c',
      'Ans3': 'B',
      'Ans4': 'D'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dice1.png'),
                    fit: BoxFit.cover,
                    opacity: 0.5),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.0),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/dice1.png',
                        ),
                      ),
                      Text(
                        'Hello, Kunj',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            getDrawerItem('Home', Icons.home, Colors.red),
            getDrawerItem('Card Payment', Icons.card_membership, Colors.blue),
            getDrawerItem('Discounts', Icons.discount, Colors.yellow),
            getDrawerItem('Rewards', Icons.fast_rewind, Colors.pink),
          ],
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return QuizPage(
            questionData: datasets[index],
          );
        },
        itemCount: datasets.length,
      ),
    );
  }

  Widget getDrawerItem(menuName, icon, color) {
    return ListTile(
      onTap: () {

        Navigator.pop(context);
      },
      title: Text(
        menuName,
        style: TextStyle(color: color),
      ),
      leading: Icon(
        icon,
        color: color,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 18,
        color: Colors.grey,
      ),
    );
  }

  List<Widget> getTabPages() {
    List<Widget> widgets = [];
    for (int i = 0; i < 36; i++) {
      if (i % 2 == 0) {
        widgets.add(LaunchPage());
      } else {
        widgets.add(PreLoginPage());
      }
    }
    return widgets;
  }
}
