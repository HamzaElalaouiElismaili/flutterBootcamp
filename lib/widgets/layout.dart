
import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Column(
        children: [

          Row(
            children:
            [
              const Text("Row 1"),
              const Text("Row 2"),
              const Text("Row 3"),
            ],
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [
              const Text("Row 1"),
              const Text("Row 2"),
              const Text("Row 3"),
            ],
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            [
              const Text("Row 1"),
              const Text("Row 2"),
              const Text("Row 3"),
            ],
          ),


          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            [
              const Text("Row 1"),
              const Text("Row 2"),
              const Text("Row 3"),
            ],
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              const Text("Row 1"),
              const Text("Row 2"),
              const Text("Row 3"),
            ],
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:
            [
              const Text("Row 1"),
              const Text("Row 2"),
              const Text("Row 3"),
            ],
          ),


          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:
            [
              const Text("Row 1"),
              const Text("Row 2"),
              const Text("Row 3"),
            ],
          ),




        ],
      ),
    );
  }
}
