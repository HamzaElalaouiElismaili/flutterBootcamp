import 'package:flutter/material.dart';



// this is the main method to run the app
// cest la methode principale pour lancer l'application
// esta es el metodo principal para ejecutar la aplicacion
// هذه هي الطريقة الرئيسية لتشغيل التطبيق
void main() {
  runApp(const MyApp());
}



// this is the main widget
// cest le widget principal
// este es el widget principal
// هذا هو الودجت الرئيسي
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

     /// MaterialApp is the root widget of the app
    // this is the material app root widget of the app
    // cest le widget racine de lapplication material app
    // este es el widget raiz de la aplicacion material app
    // هذا هو عنصر واجهة المستخدم الجذر للتطبيق
    return MaterialApp(
      title: 'Digital media',
      theme: ThemeData(primarySwatch: Colors.blue,),

       ///FirstApp is the first screen to show when the app is launched
      // cest la premiere ecran a afficher quand l'application est lancee
      // esta es la primera pantalla que se muestra cuando se lanza la aplicacion
      // هذه هي الشاشة الأولى التي سيتم عرضها عند بدء تشغيل التطبيق
      home: const FirstApp(),
    );
  }
}


// this is the first screen
// cest la premiere ecran
// esta es la primera pantalla
// هذه هي الشاشة الأولى
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


// this is the reusable widget for the listview items
// cest le widget reusable pour les elements de la listview
// este es el widget reutilizable para los elementos de la lista
// هذا هو عنصر واجهة المستخدم المستخدمة مرة أخرى لعناصر القائمة
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