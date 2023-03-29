import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendario'
         ),
         BottomNavigationBarItem(
          icon: Icon(Icons.assessment_outlined),
          label: 'Grafica'
         ),
         BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Usuarios'
         ),
        
      ],
      
    );
  }
}