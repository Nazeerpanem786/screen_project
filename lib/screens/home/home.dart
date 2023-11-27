import 'package:flutter/material.dart';
import 'package:screen_project/screens/detail/detail.dart';
import 'package:screen_project/screens/home/widget/best_sell.dart';
import 'package:screen_project/screens/home/widget/custom_app_bar.dart';
import 'package:screen_project/screens/home/widget/new_arrival.dart';
import 'package:screen_project/screens/home/widget/search_input.dart';
import 'package:screen_project/models/coffee.dart';

class HomePage extends StatelessWidget{
  final bottomList = ['home','menu','menu','user'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArrival(),
            BestSell(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomList.map((e) => BottomNavigationBarItem(
            label: e,icon: Image.asset('assets/icons/$e.png',width: 25,))).toList(),
      ),
    );
  }

}