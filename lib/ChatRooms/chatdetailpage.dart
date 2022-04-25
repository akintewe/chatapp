import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'messagemodel.dart';

List<ChatMessage> messages = [
  ChatMessage(messageContent: 'Hello', messageType: 'reciever'),
  ChatMessage(messageContent: 'How have you been', messageType: 'reciever'),
  ChatMessage(messageContent: 'I am doing fine, how are you', messageType: 'sender'),
  ChatMessage(messageContent: 'I am fine, its been a while', messageType: 'reciever'),
  ChatMessage(messageContent: 'Yeah ikr...lol', messageType: 'sender'),
  ChatMessage(messageContent: 'So whats up', messageType: "reciever"),
  ChatMessage(messageContent: 'I am good.. just got back from work', messageType: 'sender'),
  ChatMessage(messageContent: 'Same here.. just finished jogging ', messageType: 'reciever')

];