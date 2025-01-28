import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatt extends StatelessWidget {
  const DateFormatt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATE-FORMAT'),
      ),
      body: Column(
        children: [
          Center(
            child: Expanded(
              child: Text(
                DateFormat('dd/MM/yyyy').format(DateTime.now()),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Center(
            child: Expanded(
              child: Text(
                DateFormat('dd-MM-yyyy ').format(DateTime.now()),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Center(
            child: Expanded(
              child: Text(DateFormat('dd-MMM-yyyy').format(DateTime.now()),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Center(
            child: Expanded(
              child: Text(DateFormat('dd-MM-yy').format(DateTime.now()),
                style: TextStyle(fontSize: 20),),
            ),
          ),
          Center(
            child: Expanded(
              child: Text(DateFormat('dd MMM, yyyy').format(DateTime.now()),
                style: TextStyle(fontSize: 20),),
            ),
          )
        ],
      ),
    );
  }
}
