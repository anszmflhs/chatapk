import 'package:flutter/material.dart';

const KSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18,
);

const KMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
  hintText: 'Type your message here..',
  border: InputBorder.none,
  hintStyle: TextStyle(color: Colors.grey),
);

const KMessageContainerDecoration = BoxDecoration(
    border: Border(
        top: BorderSide(color: Colors.lightBlueAccent,width: 2))
);