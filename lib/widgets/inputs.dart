import 'package:flutter/material.dart';


class InputUser extends StatelessWidget {
  const InputUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const InputDecoration decoration = InputDecoration();

    return Scaffold(
      body: Column(
        children:
        [

           const TextField(),


          TextField(
            controller: TextEditingController(),
            keyboardType : TextInputType.number,
            textInputAction: TextInputAction.search,
            readOnly: true,
            autofocus: true
          ),


          // Decoration
          TextField(
            controller: TextEditingController(),
            keyboardType : TextInputType.number,
            textInputAction: TextInputAction.search,
            readOnly: true,
            autofocus: true,
            decoration: const InputDecoration(
              icon: Icon(Icons.star),

            ),
          ),

          //https://medium.com/flutter-community/a-visual-guide-to-input-decorations-for-flutter-textfield-706cf1877e25





        ],
      ) ,
    );
  }
}
