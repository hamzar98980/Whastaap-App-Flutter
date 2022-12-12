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
        call_view("Babar Azam", "(3) Yesterday, 10:02 pm",
            "https://img1.hscicdn.com/image/upload/f_auto/lsci/db/PICTURES/CMS/346200/346233.6.jpg"),
        call_recieved('Tom Cruise', 'Today, 10:02 pm',
            'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x'),
        call_view("Junaid", "Today, 10:02 pm",
            "https://dm.henkel-dam.com/is/image/henkel/men_perfect_com_thumbnails_home_pack_400x400-wcms-international?scl=1&fmt=jpg"),
        call_view("Spidermon", "(3) Yesterday, 10:02 pm",
            "https://lumiere-a.akamaihd.net/v1/images/spiderman-characterthumbnail-spiderman_3a64e546.jpeg?region=0%2C0%2C300%2C300"),
      ],
    );
  }
}

call_view(name, msg, img) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(img),
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
    trailing: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Icon(
            Icons.call,
            size: 20,
            color: Color(0xFF075E54),
          ),
        )
      ],
    ),
  );
}

call_recieved(name, msg, img1) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(img1),
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
    trailing: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Icon(
            Icons.call,
            size: 20,
            color: Color(0xFF075E54),
          ),
        )
      ],
    ),
  );
}
