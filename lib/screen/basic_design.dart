import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget{
  const BasicDesignScreen({super.key});

  @override
Widget build(BuildContext context){
return  Scaffold(
    body: Column(
      children: [
        Image( image: AssetImage('assets/landscape.jpg')),
        Title(),
        ButtomSection(),
        SubText()
        

    ],)
    
      

  );

}
  }




class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Oeschinen Lake Campgraound', style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
              ],
              ),
              Expanded(child: Container()),
              
              Icon(Icons.star, color: Colors.red,),
              Text('41')
              ],
      ),
        );
       
  }
}
class ButtomSection extends StatelessWidget {
  
  const ButtomSection({
    Key? key, 
    
  }) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButtom(icon: Icons.call, text: ('CALL')),
          CustomButtom(icon: Icons.north_east_outlined, text: ('ROUTE')),
          CustomButtom(icon: Icons.share_rounded, text: ('SHARE'))
        ],
      ),
    );
  }
}
class CustomButtom extends StatelessWidget {

  const CustomButtom({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue,),
        Text(this.text, style: TextStyle(color: Colors.blue))
      ],
    );
  }
}
class SubText extends StatelessWidget {
  const SubText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Lake Oeschinen lies at the foot of the Bluemilisalps in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes.')
        ],
      ),
    );
  }
}
