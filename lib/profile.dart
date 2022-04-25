import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: IconButton(
                      icon: Icon(
                        Icons.dehaze,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Mobile developer',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 20),
                    child: IconButton(
                      icon: Icon(Icons.edit, color: Colors.white),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: ListView(
              children: <Widget>[
                new CardHolder(),
                SizedBox(
                  height: 200,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardHolder extends StatefulWidget {
  const CardHolder({Key? key}) : super(key: key);

  @override
  State<CardHolder> createState() => _CardHolderState();
}

class _CardHolderState extends State<CardHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 140,right: 10, left: 10, ),
      height: 600,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(.1),
            blurRadius: 20,
            spreadRadius: 10
          ),
        ]
      ),
      child: new Card(),

    );
  }
}
class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/21.jpg'),
            ),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.blue.withOpacity(.2), width: 1
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Mary Jane',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('2908 posts created',style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 12,
              child: VerticalDivider(
                width: 2,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text('900 Feedback',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 15,
            ),),

          ],

        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(left: 20, right: 20, top: 8),
          width: 320,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                spreadRadius: 5
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Website',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                      SizedBox(
                        height: 3,
                      ),
                      Text('www.cravecart.com',
                      style: TextStyle(
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(onPressed: (){},
                              icon: Icon(
                                Icons.link,
                              ),
                          ),
                          IconButton(onPressed: (){},
                              icon: Icon(
                                Icons.phone
                              )),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Text('Biography',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,

              ),),
              SizedBox(
                height: 10,
              ),
              Text('Contrary to popular belief, Lorem Ipsum is not simply random text, It has roots in a piece of classical Latin Literature from 45 BC',
              style: TextStyle(
                fontWeight: FontWeight.bold,

              ),)
            ],
          ),

        )
      ],
    );
  }
}


