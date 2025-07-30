import 'package:desktop_practice/app.dart';
import 'package:flutter/material.dart'; 

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NAVG',style: TextStyle(color: const Color.fromARGB(255, 54, 134, 253),fontWeight: FontWeight.bold,fontSize: 20),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: 450,
          width: 350,
          child: Card(
            elevation: 30,
            shadowColor: const Color.fromARGB(255, 49, 127, 245),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color.fromARGB(197, 1, 71, 129),const Color.fromARGB(184, 23, 107, 175),const Color.fromARGB(208, 39, 124, 235),const Color.fromARGB(183, 12, 76, 213)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadiusDirectional.circular(30)
              ),
              
              child: Center(
                child: SizedBox(
                  height: 450,
                  width: 300,
                  child: Column(
                    children: [
                       SizedBox(height: 10,),
                      SizedBox(
                        child: Center(
                          child: Text('WELCOME',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                      SizedBox(height: 100,),
                      SizedBox(
                        height: 40,
                        width: 300,
                        child:  TextField(
                          style: TextStyle(
                            color: Colors.white
                          ),
                    keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 3
                  )
                ),
                labelText: 'Sign Up',
                fillColor: Colors.blueAccent,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
                ),
              ),
              ),
                      ),
                      SizedBox(height: 20,),
                      SizedBox(
                        height: 40,
                        width: 300,
                        child:  TextField(
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                    keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 3
                  )
                ),
                labelText: 'Enter your password',
                fillColor: Colors.blueAccent,
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
                ),
              ),
              ),
                      ),
                     SizedBox(height: 50,),
                     SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context, 
                          MaterialPageRoute(builder: (context) => SecondPage()),
                          );
                        },
                        child: Text('NEXT'),
                      ),
                     )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 207, 206, 206),
    );
  }
}

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('THANK YOU PAGE',style: TextStyle(color: const Color.fromARGB(255, 54, 134, 253),fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                child: Text('Thank you for registering \nour TEAM will contact you through your E-MAIL',
                style: TextStyle(color: const Color.fromARGB(255, 54, 134, 253),fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 30,),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('GO BACK'),
                ),
              )
            ],
          ),
        ),
    );
  }
}
