import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/ChatRooms/chatdetailpage.dart';
import 'package:training/mainScreen.dart';
import 'package:training/settings.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                ),

                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: AssetImage('lib/images/woman17.jpg'),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Angela',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 6,),
                    Text('Online', style: TextStyle(
                      color: Colors.grey.shade600, fontSize: 13
                    ),),
                  ],
                )),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
                }, icon: Icon(
                  Icons.settings,
                ),)
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(itemCount: messages.length,
            shrinkWrap: true,
            padding:
            EdgeInsets.only(top: 10,
            bottom: 10),
            physics:
            NeverScrollableScrollPhysics(
            ),
            itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(left: 16,right: 16, top: 10, bottom: 10),
              child: Align(
                alignment: (messages[index].messageType == "reciever"?
                Alignment.topLeft: Alignment.topRight),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: (messages[index].messageType == "reciever"?
                    Colors.grey.shade200: Colors.lightBlue),
                  ),
                  padding: EdgeInsets.all(16),
                  child:
                  Text(messages[index].messageContent,
                  style: TextStyle(fontSize: 15),),
                ),
              )
            );
            },),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white,size: 20,),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(child: TextField(decoration: InputDecoration(
                    hintText: "Write message....",
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none
                  ),)),
                  SizedBox(width: 15,),
                  FloatingActionButton(onPressed: (){},
                  child: Icon(Icons.send, color: Colors.white, size: 18,),
                  backgroundColor: Colors.blue,
                  elevation: 0,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
