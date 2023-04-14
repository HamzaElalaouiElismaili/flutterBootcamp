



import 'package:flutter/material.dart';

class ImageHolder extends StatelessWidget {
  const ImageHolder({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {



    return Scaffold(

      body: Column(
        children:
          [

           // Icons
          const Icon(Icons.dashboard),

          const Icon(Icons.dashboard, color: Colors.blue, size: 20,),


           // Images Local
           Image.asset("assets/logo.png"),

           Image.asset("assets/logo.png",width: 50,height: 50,),
           Image.asset("assets/logo.png",width: 50,height: 50,scale: 2, fit: BoxFit.contain,),

           // Images Network
           Image.network("https://profi.ma/public/home/assets/logo.png"),

           Image.network("https://profi.ma/public/home/assets/logo.png", height: 50,width: 50, scale: 2,fit: BoxFit.fitWidth, ),


            // Image inside Circle
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage("https://profi.ma/public/home/assets/logo.png"),
            ),



        ],
      ),
    );
  }
}
