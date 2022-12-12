import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Color(0xFF075E54),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              chatview("Hamza", "Hello World", "Today"),
              chatview2("Ali", "Hello World", "Today"),
              chatview("Hamza", "Hello World", "Yesterday"),
              chatview("Moiz", "Hello World", "Yesterday"),
              chatview("Tom Cruise", "Hello World", "Yesterday"),
              chatview2("Babar Azam", "Hello World", "06/12/2022"),
              chatview2("Virat Kholi", "Hello World", "05/12/2022"),
              chatview2("Zain", "Hello World", "05/12/2022"),
              chatview2("Ali", "Hello World", "07/12/2022"),
              chatview2("Elon Musk", "Hello World", "06/12/2022"),
              chatview2("Bill Gates", "Hello World", "05/12/2022"),
              chatview2("Modi", "Hello World", "05/12/2022"),
              chatview2("Shobaz Shareef", "Hello World", "07/12/2022"),
            ],
          ),
        ),
      ),
    );
  }
}

class communityview extends StatelessWidget {
  const communityview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 50,
            height: 50,
            child: Icon(
              Icons.groups,
              color: Color.fromARGB(255, 219, 218, 212),
              size: 35,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 160, 158, 151),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Color(0xFF075E54),
              radius: 12,
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      title: Text(
        "New Community",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text(""),
    );
  }
}

chatview(
  name,
  msg,
  time,
) {
  return ListTile(
    leading: CircleAvatar(backgroundColor: Colors.red),
    title: Text("$name"),
    subtitle: Text("$msg"),
    trailing: Column(
      children: [
        Text("$time"),
        Container(
          margin: EdgeInsets.only(left: 15),
          width: 20,
          child: const CircleAvatar(
            backgroundColor: Color(0xFF25D366),
            child: Text(
              "3",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        )
      ],
    ),
  );
}

chatview2(
  name,
  msg,
  time,
) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.red,
    ),
    title: Text("$name"),
    subtitle: Text("$msg"),
    trailing: Column(
      children: [
        Text("$time"),
      ],
    ),
  );
}
