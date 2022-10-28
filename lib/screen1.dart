import 'package:flutter/material.dart';
import 'package:screens/screen2.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('screen one'),
      centerTitle: true,
    ),
     body: Column(
      children: [
        SizedBox(height: 20,),
         ClipRRect(
          borderRadius: BorderRadius.circular(110),
           child: Image(
              image: AssetImage('images/bunny.jpeg',),
              width: 220,
              height: 220,
              fit: BoxFit.fill,  
            ),
         ),
         SizedBox(height: 30,),
         Text('Hi I am Bunny' , style: GoogleFonts.metamorphous(
          fontSize: 20,
          fontWeight: FontWeight.bold
         ),),
        Center(
          child: Column(
            children: [  
                ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Screen2(name: "Hi! I am bunny",)));
              }, child: const Text('Go to screen1 Page'))
            ],
          ),
        ),
      ]
     ),
    );
  }
}