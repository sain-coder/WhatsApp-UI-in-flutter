import 'package:flutter/material.dart';
import 'package:whatsappclone/info/info.dart';

import '../Colors/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: appBarColor,
         title: Text(info[0]['name'].toString()),
         toolbarHeight: 70,
       ),
      body: Center(child: Text('Here is ur chat',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),)),
    );

  }
}
