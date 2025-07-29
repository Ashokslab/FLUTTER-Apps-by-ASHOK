import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});
 
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "text inpput app",
      debugShowCheckedModeBanner: false,
      home: Exm(),
    );
  }

}

class Exm extends StatefulWidget{
  const Exm({super.key});

  @override
  State<Exm> createState() => Exm1();
}

class Exm1 extends State<Exm>{
  String letters = "";
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ashok',
        style: TextStyle(
          color: Color.fromARGB(255, 4, 255, 0),
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200, left: 10),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "sign up",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  letters = value;
                });
              },
            ),
            const SizedBox(height: 20),

           TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              labelStyle:  TextStyle(
                color: const Color.fromARGB(255, 7, 23, 255),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )
            ),
           ),
         const SizedBox( height: 30)
          ],
        ),
      ),
    );
  }
}

