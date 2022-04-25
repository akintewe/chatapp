import 'package:flutter/material.dart';
import 'package:training/ChatRooms/chatroom.dart';
import 'package:training/profile.dart';
import 'conversationList.dart';
import 'storyItem.dart';

List<String> imageUrls = [
  "lib/images/man42.jpg",
  "lib/images/woman17.jpg",
  "lib/images/woman18.jpg",
  "lib/images/11.jpg",
  "lib/images/21.jpg",
  "lib/images/22.jpg",
  "lib/images/72.jpg",
  "lib/images/74.jpg",
  "lib/images/76.jpg",
];

class Conversations extends StatefulWidget {
  const Conversations({Key? key}) : super(key: key);

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyItem(imageUrls[0], "Micheal"),
                  storyItem(imageUrls[1], "Angela"),
                  storyItem(imageUrls[2], "Maria"),
                  storyItem(imageUrls[3], "Mia"),
                  storyItem(imageUrls[4], "Anna"),
                  storyItem(imageUrls[5], "Christian"),
                  storyItem(imageUrls[6], "Jerry"),
                  storyItem(imageUrls[0], "Micheal"),
                  storyItem(imageUrls[1], "Angela"),
                  storyItem(imageUrls[2], "Maria"),
                  storyItem(imageUrls[3], "Mia"),
                  storyItem(imageUrls[4], "Anna"),
                  storyItem(imageUrls[5], "Christian"),
                  storyItem(imageUrls[6], "Jerry"),
                  storyItem(imageUrls[0], "Micheal"),
                  storyItem(imageUrls[1], "Angela"),
                  storyItem(imageUrls[2], "Maria"),
                  storyItem(imageUrls[3], "Mia"),
                  storyItem(imageUrls[4], "Anna"),
                  storyItem(imageUrls[5], "Christian"),
                  storyItem(imageUrls[6], "Jerry"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/woman17.jpg'),
                      ),
                      title: Text(
                        'Angela',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Hello how are you'),
                      trailing: Icon(
                        Icons.mark_email_read,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatRoom()));
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/man42.jpg'),
                      ),
                      title: Text(
                        'Micheal',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('The manager told me to send...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {

                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/76.jpg'),
                      ),
                      title: Text(
                        'Grace',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Crazy right? lol'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {

                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/74.jpg'),
                      ),
                      title: Text(
                        'Love',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Meet me tomorrow ok?'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {

                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/22.jpg'),
                      ),
                      title: Text(
                        'Dorcas',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('just kidding ahah'),
                      trailing: Icon(
                        Icons.mark_email_read,
                        color: Colors.green,
                      ),
                      onTap: () {

                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {

                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    new Divider(
                      height: 1.0,
                      indent: 1.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/images/21.jpg'),
                      ),
                      title: Text(
                        'Anna',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      subtitle: Text('Are you going to the mall with...'),
                      trailing: Icon(
                        Icons.mark_email_unread_rounded,
                        color: Colors.green,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    //REMEMBER TO USE LIST TILE HERE
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
