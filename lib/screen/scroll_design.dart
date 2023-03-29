import 'dart:ffi';

import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        gradient:LinearGradient (
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.7, 0.9],
          colors:[
            Color.fromARGB(255, 121, 240, 210),
            Color(0xff30BAD6),
          ]
          )
        ),
        
          child: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Page1(),
          Page2()
         

        ],
      ),  
    
    ),
    
   ); 
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
         Background(),
         MainContex()
       ],
     );
  }
}
class Background extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: double.infinity,
      alignment: Alignment.topCenter,
      
      child: Image(image: AssetImage('assets/s.jpg')

      
        )
      );
  }
}
class MainContex extends StatelessWidget {
  const MainContex({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         SizedBox(height: 30,),
         Text('11º',style: textStyle,),
         Text('Miercoles',style: textStyle,),
         Expanded(child: Container()),
         Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
    
       ],
      ),
    );
  }
}
class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenidos', style: TextStyle(color: Colors.white, fontSize: 30), ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
         ),
      ),
    );
  }
}