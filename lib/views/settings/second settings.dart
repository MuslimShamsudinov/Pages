import 'dart:io';

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Muslim Shamsudinov'),
            accountEmail: const Text("shamsudinov@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/images/profile.jpeg')),
            ),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                  image: AssetImage('assets/images/home.jpeg'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.file_upload,color:Colors.deepPurple),
            title: const Text('Upload shot',style: TextStyle(color: Colors.deepPurple)),
            onTap: () => print('Upload tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle,color: Colors.deepPurple,),
            title: const Text('Profile',style: TextStyle(color: Colors.deepPurple)),
            onTap: () => print('Profile tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.message,color:Colors.deepPurple),
            title: const Text('Message',style: TextStyle(color: Colors.deepPurple)),
            onTap: () => print('Messagetapped'),
          ),
          ListTile(
            leading: const Icon(Icons.line_axis,color:Colors.deepPurple),
            title: const Text('Stats',style: TextStyle(color: Colors.deepPurple)),
            onTap: () => print('Stats tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.share,color:Colors.deepPurple),
            title: const Text('Share',style: TextStyle(color: Colors.deepPurple)),
            onTap: () => print('Share tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.notifications,color:Colors.deepPurple),
            title: const Text('Notifications',style: TextStyle(color: Colors.deepPurple)),
            onTap: () => print('Notifications tapped'),
          ),
          //Divider(),
          ListTile(
            leading: const Icon(Icons.settings,color:Colors.deepPurple),
            title: const Text('Settings',style: TextStyle(color: Colors.deepPurple)),
            onTap: () => print('Settings tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.logout,color:Colors.deepPurple),
            title: const Text('Logout',style: TextStyle(color: Colors.deepPurple),),
            onTap: () => print('Logout tapped'),
          ),
        ],
      ),
    );
  }
}
