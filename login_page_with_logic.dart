import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login detail checker',
      home: Loginpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class Loginpage extends StatefulWidget{
  const Loginpage({super.key});
  @override
  State<Loginpage> createState() => Loginpage1();
}

class Loginpage1 extends State<Loginpage>{
  int pass = 1234;
  String email = "ashok@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ashok reddy'),
      ),
      body: Center(
        child: SizedBox(
          height: 600,
          width:  500,
          child: Card(
            elevation: 11,
            color: const Color.fromARGB(255, 7, 58, 2),
            child: Column(
              children: [
               SizedBox(
                height: 80,
                child: Text('Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
                ),
               ),
               SizedBox(height: 30,),
               SizedBox(
                height: 300,
                width: 400,
                child: Padding(
                  padding: EdgeInsets.only(top: 0,left: 0),
                  child: Center(
                    child: TextField(
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'email',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          )
                        )
                      ),
                    ),
                  ),
                ),
               ),
               SizedBox(height: 10,),
               SizedBox(
                height: 50,
                width: 400,
                child: Padding(
                  padding: EdgeInsets.only(top: 0,left: 0),
                  child: Center(
                    child: TextField(
                      controller: passwordcontroller,
                       decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 3,
                          )
                        )
                      ),
                    ),
                    
                  ),
                ),
               ),
               SizedBox(height: 20,),
               SizedBox(
               child: ElevatedButton(
                onPressed: () {
                  String enteremail = emailController.text.trim();
                  String enterpass = passwordcontroller.text.trim();

                  if (enteremail == email && enterpass == pass.toString()){
                       ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                        content: Text('entered email is correct',),
                        backgroundColor: Colors.green,
                        )
                       );
                  }
                   else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("enter password or email is in correct"),
                      backgroundColor: Colors.red,)
                    
                    );
                    
                   }
                },
                child: Text('LOG IN'),
               ),
               
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
