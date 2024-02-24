

import 'package:flutter/material.dart';
import 'package:nav_draw_demo/screens/home_screen.dart';

import '../screens/contact_us_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              color: Colors.purple,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.rss_feed,
                    color: Colors.white,
                    size: 80,
                  ),
                  Text(
                    'DECODE',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {

              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                return HomeScreen();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: const Text('Contact Us'),
            onTap: () {

              Navigator.of(context).pop();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                return ContactUsScreen();
              }));
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.style_rounded),
            title: const Text('Courses'),
            children: [
              const Text('App Dev'),
              const Text('Data Analytics'),
              const Text('ECommerce'),
            ],
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: const Text('About Us'),
            onTap: () {},
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.cancel),
            title: const Text('Exit'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
