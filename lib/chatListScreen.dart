
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'addContact.dart';

class ChatScreenList extends StatefulWidget {
  const ChatScreenList({Key? key}) : super(key: key);

  @override
  State<ChatScreenList> createState() => _ChatScreenListState();
}

class _ChatScreenListState extends State<ChatScreenList> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Search Contact');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
          onPressed:(){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AddContact() )
          );
          },
          icon: Icon(Icons.add),
          label: Text('New') ),
      appBar: AppBar(
        title: customSearchBar,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            setState(() {
              if (customIcon.icon == Icons.search){
                customIcon = const Icon(Icons.cancel);
                customSearchBar = const ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter a name or number',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),

                  ),
                );

              }else{
                customIcon = const Icon(Icons.search);
                customSearchBar = const Text('Search Contact');
              }
            });
          }, icon:customIcon,
          )
        ],
        centerTitle: true,

      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/72.jpg'),
            ),
            title: Text('Mary', style: TextStyle(fontWeight: FontWeight.bold,),),
            subtitle: Text('+54788735638'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){
              Text('Another Data');
            },
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/21.jpg'),
            ),
            title: Text('Anna'),
            subtitle: Text('+54479853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/76.jpg'),
            ),
            title: Text('Grace'),
            subtitle: Text('+44798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/man42.jpg'),
            ),
            title: Text('Micheal'),
            subtitle: Text('+6447853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/11.jpg'),
            ),
            title: Text('Mia'),
            subtitle: Text('+44798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/22.jpg'),
            ),
            title: Text('Jessica'),
            subtitle: Text('+747968853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/woman18.jpg'),
            ),
            title: Text('Maria'),
            subtitle: Text('+233798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/74.jpg'),
            ),
            title: Text('Rose'),
            subtitle: Text('+58798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
            ),
            title: Text('Rose'),
            subtitle: Text('+58798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
            ),
            title: Text('Rose'),
            subtitle: Text('+58798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
            ),
            title: Text('Rose'),
            subtitle: Text('+58798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
            ),
            title: Text('Rose'),
            subtitle: Text('+58798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),
          new Divider(
            height: 1.0,
            indent: 1.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('lib/images/usericon.png'),
            ),
            title: Text('Rose'),
            subtitle: Text('+58798853864753'),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){},
          ),





        ],
      )
    );

  }
}

