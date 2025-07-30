import 'package:flutter/material.dart'; 

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  const Myapp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pac2',
      home: Hello(),
      debugShowCheckedModeBanner: false,
  );
  }
}

class Hello extends StatefulWidget{
  const Hello({super.key});

@override
  State<Hello> createState() => Hello1();
}
 class Hello1 extends State<Hello> {
  String letter = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ashok reddy',
        style: TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
        ),
        backgroundColor: Colors.black,
      ),
    body: Padding(
      padding: EdgeInsets.only(top: 10,left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    child: Center(
                      child: Text('Red',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    )
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text('green',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text('blue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    child: Center(
                      child: Text('Red',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    )
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text('green',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text('blue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              )
            ], 
          ),
          SizedBox(height: 20,),
          Row(
             children: [
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    child: Center(
                      child: Text('Red',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    )
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text('green',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text('blue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
             children: [
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    child: Center(
                      child: Text('Red',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    )
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                  color: Colors.green,
                  child: Center(
                    child: Text('green',style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text('blue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
    );
  }
 }
