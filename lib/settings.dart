import 'package:flutter/material.dart';
import 'package:training/profile.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: new Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Settings',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              icon: Icon(Icons.person))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/woman18.jpg'),
              radius: 30,
            ),
            title: Text('Mary jane',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),),
            subtitle: Text('Hello i am using quick chat...',
            style: TextStyle(
              fontSize: 15
            ),),
            trailing: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            }, icon: Icon(Icons.arrow_forward_ios, color: Colors.grey,),),
          ),
         Divider(
           indent: 2,
         ),
         SizedBox(
           height: 40,
         ),
          Divider(
            indent: 2,
          ),
          //starred messages, linked devices,account, chats,notifications,storage and data, help, tell a friend
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
            ),
            title: Text('Starred messages',
            style: TextStyle(
              fontSize: 19
            ),),
            trailing: IconButton(
              onPressed: (){},icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          new Divider(
            height: 10,
            indent: 2,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
            ),
            title: Text('Linked devices',
            style: TextStyle(
              fontSize: 19
            ),),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          new Divider(
            height: 10,
            indent: 2,
          ),
          SizedBox(
            height: 40,
          ),
          new Divider(
            indent: 2,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
            ),
            title: Text('Account',
              style: TextStyle(
                  fontSize: 19
              ),),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          new Divider(
            height: 10,
            indent: 2,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
            ),
            title: Text('Chats',
            style: TextStyle(
              fontSize: 19,
            ),),
            trailing: IconButton(
              onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          new Divider(
            height: 10,
            indent: 2,
          ),
          //notifications
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
            ),
            title: Text('Notifications',
            style: TextStyle(fontSize: 19,
            ),),
            trailing: IconButton(
              onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),
            ),

          ),
          new Divider(
            height: 10,
            indent: 2,
          ),
          SizedBox(
            height: 35,
          ),
          new Divider(
            indent: 2,
          ),
          //storage and data
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
            ),
            title: Text('Storage and Data',
            style: TextStyle(fontSize: 19),),
            trailing: IconButton(
              onPressed: (){},icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          new Divider(
            height: 10,
            indent: 2,
          ),
          //help
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
            ),
            title: Text('Help',
            style: TextStyle(fontSize: 19),),
            trailing: IconButton(onPressed: (){},
            icon: Icon(Icons.arrow_forward_ios),),
          ),
          new Divider(
            height: 10,
            indent: 2,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              radius:22 ,
              child: CircleAvatar(
              backgroundImage: AssetImage('lib/images/usericon.png'),
              radius: 20,
    ),
            ),
            title: Text('Tell a friend',
            style:  TextStyle(
              fontSize: 19
            ),),
            trailing: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          new Divider(
            height: 10,
            indent: 2,
          )

        ],
      ),
    );
  }
}
