import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget storyItem(String url, String name) {
  return Padding(
    padding: const EdgeInsets.only(right: 12.0),
    child: Container(
      child: Column(
        children: [
          (CircleAvatar(
            backgroundColor: Colors.green,
            radius: 32.0,
            child: CircleAvatar(
              backgroundImage: AssetImage(url),
              radius: 28.0,
            ),
          )),
          SizedBox(
            height: 5.0,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
