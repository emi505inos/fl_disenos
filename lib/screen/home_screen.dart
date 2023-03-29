import 'package:flutter/material.dart';

import 'package:fl_disenos/widgets/background.dart';
import 'package:fl_disenos/widgets/card_table.dart';
import 'package:fl_disenos/widgets/custom_bottom_navigation.dart';
import 'package:fl_disenos/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Stack(
        children: [
          // Backgound
          Background(),
          // HomeBody
          _HomeBody(),
         


        ],),
       bottomNavigationBar: CustomBottomNavigator() ,

    );
  }
}

class _HomeBody extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titles
          PageTitle(),
          // Card Table
          CardTable()
        ]),
    );
  }
}