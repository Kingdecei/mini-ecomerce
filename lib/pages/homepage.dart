import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/food.dart';
import 'package:flutter_application_1/Components/my_current_location.dart';
import 'package:flutter_application_1/Components/my_description_box.dart';
import 'package:flutter_application_1/Components/my_silver_app_bar.dart';
import 'package:flutter_application_1/Components/my_tab_bar.dart';
import 'package:flutter_application_1/Components/mydrawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin{
  // tab controller
  late TabController _tabController;
  @override
  void initState() {
    
    super.initState();
    _tabController = TabController(
      length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
   _tabController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body:  NestedScrollView(
        headerSliverBuilder: (
          context, innerBoxIsScrolled) =>[
            MySylverAppBar (
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(indent: 25, color: Theme.of(context).colorScheme.secondary,),
                  // my curent location
                  MyCurrentLocation(),

                  //description box
                  MyDescriptionBox(),
                ]
              )
             )
             ],
             body: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 5,
                itemBuilder: (
                  context, index) => Text("first tab items"),),
           ListView.builder(
                itemCount: 5,
                itemBuilder: (
                  context, index) => Text("second tab items"),),
                  ListView.builder(
                itemCount: 5,
                itemBuilder: (
                  context, index) => Text("third tab items"),),
                  
             ],)
      ),
    );
  }
}