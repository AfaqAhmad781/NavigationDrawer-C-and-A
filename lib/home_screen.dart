import "package:chapter5_n_d_c_a/screen_2.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'home_screen' ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        title: Center(child: Text('Navigation Drawer')),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade400,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange.shade800,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/31704065/pexels-photo-31704065.jpeg'),
              ),
              accountName: Text('Afaq Ahmad'), 
              accountEmail: Text('afaqahmadasdf123@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 2'),
              subtitle: Text('click to page 2'),
              onTap: (){
                Navigator.pushNamed(context, Screen2.id);
              } 
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Calender'),
              subtitle: Text('click to open Calender'),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(20)
                  ),
                ),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, Screen2.id);
              },
              child: Text('Screen 1')
              ),
          )
        ],
      ),
    );
  }
}