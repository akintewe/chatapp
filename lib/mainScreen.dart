import 'package:flutter/material.dart';
import 'package:training/profile.dart';
import 'package:training/settings.dart';
import 'conversation.dart';
import 'chatListScreen.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blue,
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder:  (context) => const ChatScreenList()));
            },
            icon: Icon(Icons.message),
            label: Text('Message'),
          ),
          appBar: AppBar(
            elevation: 0.0,
            title: Text(
              'Quick Chat',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontStyle: FontStyle.italic),
            ),
            backgroundColor: Colors.blue,
            actions: [
              IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.search),
              ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              },
                  icon: Icon(Icons.settings))
            ],
          ),
          //Column is always a function in body and it has children, it is a widget used to display child widgets in a vertical manner
          //container is a parent widget that can contain multiple child widgets
          //Padding adds empty space around a widget
          body: Column(
            children: [
              Container(
                height: 100.0,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Container(),
                ),
              ),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Conversations(),
                  ))
            ],
          ),
        );

  }
}
