import 'package:flutter/material.dart';

import '../Colors/colors.dart';
import '../widget/call_list.dart';
import '../widget/contacts_list.dart';
import '../widget/status_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.more_vert,
              //     color: Colors.grey,
              //   ),
              //
              // ),
              PopupMenuButton(
                  color: popupColor,
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: 1, child: Text("New Group")),
                        PopupMenuItem(value: 1, child: Text("New Broadcast")),
                        PopupMenuItem(value: 1, child: Text("Linked devices")),
                        PopupMenuItem(
                            value: 1, child: Text("Starred messages")),
                        PopupMenuItem(value: 1, child: Text("Settings")),
                      ]),
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8),
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: 'CHATS',
                  ),
                  Tab(
                    text: 'STATUS',
                  ),
                  Tab(
                    text: 'CALLS',
                  ),
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: Icon(Icons.comment,color: Colors.white,size: 25,),


          ),
          body: const TabBarView(
            children: [ContactsList(), StatusList(), CallList()],
          ),

        ),
    );
  }
}
