import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Center(child: Text('Edit Profile')),
      backgroundColor: Colors.red,
      elevation: 0,
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.check_rounded))],
    ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text('EDIT profile',  style: TextStyle(fontSize: 35, color: Colors.green),),
        ),
      ),
    );
  }
}