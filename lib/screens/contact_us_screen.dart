import 'package:flutter/material.dart';
import 'package:nav_draw_demo/widgets/custom_drawer.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),

      body: Column(
        children: [
          FlutterLogo(size: 100,),
          Text('Abid'),
          Text('abidroid1@gmail.com'),
          Text('+92 3329964494'),
        ],
      ),
    );
  }
}
