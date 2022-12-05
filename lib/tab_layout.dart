import 'package:flutter/material.dart';
import 'package:whatsaap_app/chats.dart';

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
        appBar: AppBar(
          title: const Text("Whatsaap"),
          backgroundColor: Color(0xFF075E54),
          actions: [
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
            tabs: [
              Tab(
                icon: Icon(Icons.group),
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
          Text("1"),
          chat(),
          Text("3"),
          Text("4"),
        ]),
      ),
    );
  }
}

// class tablayout extends StatelessWidget with SingleTickerProviderStateMixin {
//   const tablayout({super.key});

//   TabController _controller;
//   @override
//   void initState() {
//     super.initState();
//     _controller = TabController(length: 4, vsync: this, initialIndex: 0);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Whatsapp"),
//           backgroundColor: Color(0xFF128C7E),
//           actions: [Icon(Icons.search), Icon(Icons.more_vert)],
//           bottom: TabBar(
//             controller: _controller,
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.camera_alt),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
