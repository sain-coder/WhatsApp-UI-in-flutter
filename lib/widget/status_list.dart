import 'package:flutter/material.dart';
import 'package:whatsappclone/info/info.dart';

import '../Colors/colors.dart';

class StatusList extends StatelessWidget {
  const StatusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            title: Text('My Status'),
            subtitle: Text('5 minutes ago'),
            leading:
            Container(
              height: 100,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(50.0)),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1564865878688-9a244444042a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
              ),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0,vertical: 5.0),
          child: Text('Recent updates',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.bold),),
        ),

        const Divider(
          color: dividerColor,
          indent: 20,
          endIndent: 20
          ,
        ),
        
        Expanded(
          child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    status[index]['name'].toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(status[index]['time'].toString()),
                  ),
                  leading: Container(
                    height: 100,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0)),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        status[index]['StatusPic'].toString(),
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
