import 'package:flutter/material.dart';
import 'package:whatsaap_app/callls.dart';
import 'package:whatsaap_app/chats.dart';
import 'package:whatsaap_app/status.dart';

class tablayout extends StatefulWidget {
  const tablayout({super.key});

  @override
  State<tablayout> createState() => _tablayoutState();
}

class _tablayoutState extends State<tablayout>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color(0xFF273443),
        appBar: AppBar(
          title: const Text("Whatsaap"),
          backgroundColor: Color(0xFF075E54),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            Padding(padding: EdgeInsets.only(right: 12)),
            Icon(Icons.search),
            Icon(Icons.more_vert),
            Padding(padding: EdgeInsets.all(5))
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(4),
            tabs: const [
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          communityview(),
          chat(),
          status(),
          calls(),
        ]),
      ),
    );
  }
}
