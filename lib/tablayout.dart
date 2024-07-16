import 'package:flutter/material.dart';
import 'package:flutter_assignment/SearchPage.dart';
import 'package:flutter_assignment/home.dart';
import 'package:flutter_assignment/wishPage.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class TablayoutPage extends StatefulWidget {
  const TablayoutPage({super.key});

  @override
  State<TablayoutPage> createState() => _TablayoutPageState();
}

class _TablayoutPageState extends State<TablayoutPage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.notification_add, size: 40,),
              Icon(
                Icons.account_circle,
                size: 40,
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            HomePage(),
            SearchPage(),
            Wishpage()
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            indicator: MaterialIndicator(
              color: Color(0xFF7F1A2C),
              height: 10,
              topLeftRadius: 0,
              topRightRadius: 0,
              bottomLeftRadius: 100,
              bottomRightRadius: 100,
              tabPosition: TabPosition.top,
            ),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
