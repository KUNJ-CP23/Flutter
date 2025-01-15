import 'package:flutter/material.dart';

class TabDetailView extends StatefulWidget {
  TabDetailView({super.key});

  @override
  State<TabDetailView> createState() => _TabDetailViewState();
}

class _TabDetailViewState extends State<TabDetailView> {
  static const textStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 20,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Place Type",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
              isScrollable: true,
              dividerHeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              tabAlignment: TabAlignment.start,
              indicator: ShapeDecoration(
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 8),
              tabs: const [
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
                Tab(
                  text: 'Hotel',
                ),
                Tab(
                  text: 'Hostel',
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            Center(
                child: Text(
                  "Home",
                  style: textStyle,
                )),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Home",
                  style: textStyle,
                )),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Home",
                  style: textStyle,
                )),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Home",
                  style: textStyle,
                )),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Home",
                  style: textStyle,
                )),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
            Center(
                child: Text(
                  "Hotel",
                  style: textStyle,
                )),
            Center(
              child: Text(
                "Hostel",
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
