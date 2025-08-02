import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget{
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Homepage extends StatefulWidget{
  const  Homepage({super.key});
  @override
  State<StatefulWidget> createState() => Homepage1();
  }

class Homepage1 extends State<Homepage>{
  int selectedIndex = 0;
  final List<Widget> page = [
      Center(child: Text('🏠 Home', style: TextStyle(fontSize: 30))),
    Center(child: Text('📚 Courses', style: TextStyle(fontSize: 30))),
    Center(child: Text('⚙️ Settings', style: TextStyle(fontSize: 30))),

    

  ];

  void _onItemtapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      centerTitle: true,
      title: Text('navigation'),
      shadowColor: Colors.amber,
     ),
    body: page[selectedIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: _onItemtapped,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: 'settings'),

      ],
    ),
    );
   }
  }
