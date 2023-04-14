import 'package:flutter/material.dart';


enum SingingCharacter { lafayette, jefferson }

class SwitchHolder extends StatelessWidget {
  const SwitchHolder({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children:
        [


          Switch(value: true, onChanged: (value)
          {
            print(value);
          }),

          SwitchListTile(
            tileColor: Colors.red,
            title: const Text('SwitchListTile with red background'),
            value: true,
            onChanged:(bool? value)
            {
              print(value);
            },
          ),




          Radio(
              value: SingingCharacter.jefferson,
              groupValue: SingingCharacter,
              onChanged: (value)
              {
                print(value);
              }
          ),

          RadioListTile<SingingCharacter>(
            tileColor: Colors.red,
            title: const Text('Jefferson'),
            groupValue: SingingCharacter.jefferson,
            value:SingingCharacter.jefferson,
            onChanged:(SingingCharacter? value) { },
          ),


          Checkbox(
            value: true,
            onChanged: (value)
            {
              print(value);
            },
          ),


          CheckboxListTile(
            tileColor: Colors.red,
            title: const Text('Keep Login'),
            value: true,
            onChanged:(bool? value) { },
          ),









        ],
      ),
    );
  }
}
