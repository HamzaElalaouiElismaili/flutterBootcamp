
import 'package:flutter/material.dart';


class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      Column(
        children: [


          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:
            const [
              Text("Row 1"),
              Text("Row 2"),
              Text("Row 3"),
            ],
          ),

          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            const [
              Text("Row 1"),
              Text("Row 2"),
              Text("Row 3"),
            ],
          ),


          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:
            const [
              Text("Row 1"),
              Text("Row 2"),
              Text("Row 3"),
            ],
          ),



          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            const [
              Text("Row 1"),
              Text("Row 2"),
              Text("Row 3"),
            ],
          ),

          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            const [
              Text("Row 1"),
              Text("Row 2"),
              Text("Row 3"),
            ],
          ),


          const SizedBox(height: 30,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            const [
              Text("Row 1"),
              Text("Row 2"),
              Text("Row 3"),
            ],
          ),


          const SizedBox(height: 60,),

          Text('Column'),


          Container(
            height: 70,
            width: double.infinity,
            color : Colors.blue,

            child :Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Row 1"),
                Text("Row 2"),
                Text("Row 3"),
              ],
            ),
          ),



          Container(
            height: 70,
            width: double.infinity,
            color : Colors.red,

            child :
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Row 1"),
                Text("Row 2"),
                Text("Row 3"),
              ],
            ),
          ),

          Container(
            height: 70,
            width: double.infinity,

            color : Colors.yellowAccent,

            child :Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text("Row 1"),
                Text("Row 2"),
                Text("Row 3"),
              ],
            ),
          ),

          Container(
            height: 90,
            width: double.infinity,

            color : Colors.purple,

            child :Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: const [
                Text("Row 1"),
                Text("Row 2"),
                Text("Row 3"),
              ],
            ),
          ),

          Container(
            height: 80,
            width: double.infinity,
            color : Colors.amber,
            child : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
              ],
            ),
          ),




        ],
      ),
    );
  }
}
