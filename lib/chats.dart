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
              chatview("Hamza", "Hello World", "Today",
                  'https://static.wikia.nocookie.net/moviedatabase/images/8/8c/Tony_Stark.jpg/revision/latest?cb=20150430161420'),
              chatview2("Ali", "Hello World", "Today",
                  'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x'),
              chatview("Hamza", "Hello World", "Yesterday",
                  'https://static.wikia.nocookie.net/moviedatabase/images/8/8c/Tony_Stark.jpg/revision/latest?cb=20150430161420'),
              chatview("Moiz", "Hello World", "Yesterday",
                  'https://dm.henkel-dam.com/is/image/henkel/men_perfect_com_thumbnails_home_pack_400x400-wcms-international?scl=1&fmt=jpg'),
              chatview("Tom Cruise", "Hello World", "Yesterday",
                  'https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg?size=800x'),
              chatview2("Babar Azam", "Hello World", "06/12/2022",
                  'https://img1.hscicdn.com/image/upload/f_auto/lsci/db/PICTURES/CMS/346200/346233.6.jpg'),
              chatview2("Virat Kholi", "Hello World", "05/12/2022",
                  'https://m.cricbuzz.com/a/img/v1/192x192/i1/c244980/virat-kohli.jpg'),
              chatview2("Zain", "Hello World", "05/12/2022",
                  'https://images-us.nivea.com/-/media/global/advice/nivea-men/expert-beard-grooming/expert-beard-grooming-thumbnail-image.jpg?rx=0&ry=68&rw=590&rh=327'),
              chatview2("Ali", "Hello World", "07/12/2022",
                  'https://thumbs.dreamstime.com/b/portrait-handsome-smiling-young-man-folded-arms-isolated-gray-background-joyful-cheerful-men-crossed-hands-studio-shot-172868988.jpg'),
              chatview2("Elon Musk", "Hello World", "06/12/2022",
                  'https://ichef.bbci.co.uk/news/976/cpsprodpb/17C61/production/_126977379_gettyimages-1395371348.jpg'),
              chatview2("Bill Gates", "Hello World", "05/12/2022",
                  'https://cdn.britannica.com/47/188747-050-1D34E743/Bill-Gates-2011.jpg'),
              chatview2("Modi", "Hello World", "05/12/2022",
                  'https://i.dawn.com/primary/2022/05/626ffd0c1c7de.jpg'),
              chatview2("Shobaz Shareef", "Hello World", "07/12/2022",
                  'https://media.cnn.com/api/v1/images/stellar/prod/220410225812-shahbaz-sharif-pakistan-040722.jpg?c=original'),
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

chatview(name, msg, time, img) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: NetworkImage(img)),
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

chatview2(name, msg, time, img) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(img),
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
