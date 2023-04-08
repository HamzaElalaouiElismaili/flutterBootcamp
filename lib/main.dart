import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital media',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: const FirstApp(),
    );
  }
}



class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
            children:
            [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.arrow_back),
                ],
              ),


               const Text("Deactivate Account ?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

               const SizedBox(height: 10,),

               const Text("Are you sure you want to deactivate your account?" , style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),

              const SizedBox(height: 10,),

              ListView.separated(itemBuilder:
                  (context, index) => reusableWidget("https://picsum.photos/250?image=$index", Colors.cyan, Colors.pink),
                  separatorBuilder: (context, index) => const Divider(height: 10,),
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
              ),
            ],
        ),
    );
  }
}


Widget reusableWidget(String src, Color color, Color color2)
{
  return Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical:  10, ),
    child: Row(
      children: [
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey, width: 3),
          ),
          child: Image.network(src, height: 50,width: 50,),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const Text("UI/UX Design", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            const Text("Hello World"),

            Container(
              height:20,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: color2.withOpacity(0.6),
              ),
              child: const Center(child: Text("Active", style: TextStyle(color: Colors.white),)),
            ),

          ],
        ),

        const Spacer(),

        const Icon(Icons.arrow_forward_ios_sharp),
      ],
    ),
  );
}



