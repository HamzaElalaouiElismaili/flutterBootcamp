
import 'package:flutter/material.dart';

class TextHolder extends StatelessWidget {
  const TextHolder({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    const TextStyle style = TextStyle(
        color: Colors.orange, // this to change color Text
        fontWeight: FontWeight.bold, // this to change weight of Text Bold or small or normal
        fontSize: 20,  // this to change size of Text
        letterSpacing: 2,  // this to change size of Text space between letters in Text
        fontFamily: "Cairo" // this to change Font Family
    );

    return Scaffold(

      body: Column(
        children:
          [

           const Text("Digital Media"),

           const Text("Digital Media", textAlign: TextAlign.center,),

           const Text("Digital Media", textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,), // Digital Med...

           const Text("Digital Media", textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,textDirection: TextDirection.ltr,),

           // Style Text
           const Text("Digital Media 1", style: TextStyle(color: Colors.orange),),
           const Text("Digital Media 2", style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
           const Text("Digital Media 3", style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),),
           const Text("Digital Media 4", style: style),


           // RichText
           RichText(
             text: const TextSpan(
               text: 'Vous avez déja un compte? ',
               style: TextStyle(color: Color(0xff240046), fontSize: 15, fontFamily: "Nunito" ),
               children:
               [
                 TextSpan(text: 'Connectez-vous', style: style),
               ],
             ),
           ),



         ],
      ),
    );
  }
}
