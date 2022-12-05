import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        chatview("Hamza", "Hello World", "12.00 AM"),
        chatview2("Ali", "Hello World", "11.00 AM")
      ],
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
    leading: CircleAvatar(backgroundColor: Colors.red),
    title: Text("$name"),
    subtitle: Text("$msg"),
    trailing: Column(
      children: [
        Text("$time"),
      ],
    ),
  );
}
