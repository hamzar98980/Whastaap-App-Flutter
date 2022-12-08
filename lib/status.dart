import 'package:flutter/material.dart';

class status extends StatelessWidget {
  const status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        statusview("My Status", "Tap to add status update"),
        Container(
          height: 33,
          // color: Colors.grey[300],
          width: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Text(
              "Recent updates",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        simplestatus_view("Imran khan", "26 minutes ago"),
        simplestatus_view("Nawaz Shareef", "40 minutes ago"),
        simplestatus_view("Shebaz Sharif", "Today, 6:44 pm"),
        Container(
          height: 33,
          width: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Text(
              "Viewed updates",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        simplestatus_view("Salmon Khan", "40 minutes ago"),
        simplestatus_view("Krish", "Today, 3:31 am"),
      ],
    );
  }
}

statusview(
  name,
  msg,
) {
  return ListTile(
    leading: Stack(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: Colors.black,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: Color(0xFF075E54),
            radius: 10,
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
    title: Text("$name"),
    subtitle: Text("$msg"),
  );
}

simplestatus_view(
  name,
  msg,
) {
  return ListTile(
    leading: const CircleAvatar(
      backgroundImage: AssetImage('Images/img1.jpg'),
    ),
    title: Text("$name"),
    subtitle: Text("$msg"),
    trailing: Column(),
  );
}
