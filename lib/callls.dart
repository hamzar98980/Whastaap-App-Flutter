import 'package:flutter/material.dart';

class calls extends StatelessWidget {
  const calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Color(0xFF075E54),
            child: Transform.rotate(
              angle: 370,
              child: Icon(Icons.link),
            ),
          ),
          title: Text("Create call link"),
          subtitle: Text("Share a link for your WhatsApp Call"),
        ),
        Container(
          height: 33,
          width: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            child: Text(
              "Recent",
              style: TextStyle(color: Color.fromARGB(255, 97, 92, 92)),
            ),
          ),
        ),
        call_view("Babar Azam", "(3) Yesterday, 10:02 pm"),
        call_recieved('Tom Cruise', 'Today, 10:02 pm'),
        call_view("Junaid", "Today, 10:02 pm"),
        call_view("Spidermon", "(3) Yesterday, 10:02 pm"),
      ],
    );
  }
}

call_view(
  name,
  msg,
) {
  return ListTile(
    leading: const CircleAvatar(
      backgroundColor: Colors.red,
    ),
    title: Text("$name"),
    subtitle: Row(
      children: [
        Icon(
          Icons.call_made,
          size: 17,
          color: Color(0xFF075E54),
        ),
        SizedBox(
          width: 5,
        ),
        Text("$msg")
      ],
    ),
    trailing: Column(),
  );
}

call_recieved(
  name,
  msg,
) {
  return ListTile(
    leading: const CircleAvatar(
      backgroundColor: Colors.red,
    ),
    title: Text("$name"),
    subtitle: Row(
      children: [
        Icon(
          Icons.call_received,
          size: 17,
          color: Color(0xFF075E54),
        ),
        SizedBox(
          width: 5,
        ),
        Text("$msg")
      ],
    ),
    trailing: Column(),
  );
}
