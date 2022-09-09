import 'package:flutter/material.dart';
import 'package:whatsappclone/Colors/colors.dart';

import '../info/info.dart';
import 'chatscreen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child:
          ListView.builder(
            itemCount: info.length,
              itemBuilder: (context, index){
                return Builder(
                  builder: (context) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
                          },
                          child: ListTile(
                            title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: Text(info[index]['message'].toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                            ),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                info[index]['profilePic'].toString(),
                              ),
                            ),
                            trailing: Text(info[index]['time'].toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                          ),
                        ),
                        const Divider(color: dividerColor,indent: 85,endIndent: 85,)
                      ],
                    );
                  }
                );

              }
          ),
    );
  }
}
