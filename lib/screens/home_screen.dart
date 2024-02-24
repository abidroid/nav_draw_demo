import 'package:flutter/material.dart';
import 'package:nav_draw_demo/screens/contact_us_screen.dart';
import 'package:nav_draw_demo/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.message),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text('DECODE'),
      ),

      body: Center(child: Icon(Icons.home, size: 150,),),
    );
  }
}
