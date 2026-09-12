import "package:chapter5_n_d_c_a/screen_2.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Screen2 ())
                  );
              },
              child: Text('Screen 1')
              ),
          )
        ],
      ),
    );
  }
}