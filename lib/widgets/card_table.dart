import 'package:flutter/material.dart';


import 'dart:ui';


class CardTable extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.grid_view_rounded, text: 'General',),
            _SingleCard(color: Colors.purple, icon: Icons.directions_bus, text: 'Transport',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.pink.shade300, icon: Icons.shopping_bag, text: 'Shopping',),
            _SingleCard(color: Colors.orange.shade300, icon: Icons.request_page_outlined, text: 'Bills',),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(color: Colors.indigoAccent, icon: Icons.movie_creation_rounded, text: 'Entertainment',),
            _SingleCard(color: Colors.green.shade400, icon: Icons.local_grocery_store_outlined, text: 'Grocery',),
          ]
        ),
      ],

    );
  }
}

class _SingleCard extends StatelessWidget{
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
    {super.key, 
    required this.icon, 
    required this.color, 
    required this.text});
  @override
  Widget build(BuildContext context){
    var column = Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: this.color,
              child: Icon(this.icon, size: 35, color: Colors.white,),
              radius: 30,
              ),
              SizedBox( height: 10,),
              Text(this.text, style: TextStyle(color:this.color, fontSize: 18),)
          ],
        );      
    return _SingleCardBackground(
      child: column );
  }
}

class _SingleCardBackground extends StatelessWidget{
  final Widget child;

  const _SingleCardBackground({
    super.key, 
    required this.child});
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
        
          ),
        ),
      ),
    );
  }
}