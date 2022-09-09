import 'package:flutter/material.dart';

import '../Colors/colors.dart';
import '../info/info.dart';

class CallList extends StatelessWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: calls.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text(calls[index]['name'].toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(calls[index]['time'].toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          calls[index]['profilePic'].toString(),
                        ),
                      ),
                      trailing: Icon( index / 2 ==2  ? Icons.video_call_rounded:Icons.call),
                    ),
                  );

                }
            ),
          ),
          const Divider(color: dividerColor,indent: 85,)
        ],
      ),

    );
  }
}
