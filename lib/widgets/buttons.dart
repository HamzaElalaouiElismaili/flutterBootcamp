import 'package:flutter/material.dart';


class ButtonsHolder extends StatelessWidget {
  const ButtonsHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children:
        [

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              elevation: 0,
            ),
            onPressed: () {},
            child: const Text("Tap on this"),
          ),

          const SizedBox(height: 10,),


          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.red,
              side: const BorderSide(
                color: Colors.red,
              ),
            ),
            onPressed: () {},
            child: const Text("Tap on this"),
          ),

          const SizedBox(height: 10,),

          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () {},
            child: const Text("Tap on this"),
          ),

          const SizedBox(height: 10,),


          IconButton(
            icon: const Icon(Icons.favorite),
            iconSize: 40,
            color: Colors.red,
            onPressed: () {},
          ),

        ],
      ),
    );
  }
}
