



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
            alignment: Alignment.center,
            width: 100,
            height: 100,
            color: Colors.red,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 5 , color: Colors.blue),

            ),
            child: const Text("Hello"),
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            decoration:  BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 5 , color: Colors.blue),
            ),
          ),


          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            decoration:  BoxDecoration(
              color: Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 5 , color: Colors.blue),
              boxShadow: [
                const BoxShadow(
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


          const Divider(),

          const Spacer(),





        ],
      ),
    );
  }
}
