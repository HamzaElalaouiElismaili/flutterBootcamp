



import 'package:flutter/material.dart';

class ContentHolder extends StatelessWidget {
  const ContentHolder({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {



    return Scaffold(

      body: Column(
        children:
        [

          const SizedBox(
            width: 100,
            height: 100,
            child: Placeholder(),
          ),


          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.black),
                left: BorderSide(width: 1.0, color: Colors.black),
                right: BorderSide(width: 1.0, color: Colors.black),
                bottom: BorderSide(width: 1.0, color: Colors.black),),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
          ),


          const ListTile(
            leading: Icon(Icons.star),
            title: Text('Title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),





        ],
      ),
    );
  }
}
