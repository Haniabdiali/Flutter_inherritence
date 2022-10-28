import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key ,required this.name}): super(key: key);

  final String name;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bunny'),
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
         SizedBox(height: 20,),

         //data from screen 1///////////////////////////////////////
          Text('${name}' ,style: GoogleFonts.metamorphous(
          fontSize: 20,
          fontWeight: FontWeight.bold
         ),),
          Center( child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
         }, 
           child: Text("Back"),
         
        ),    
      ),
     
        ],
      ),
    );
  }
}