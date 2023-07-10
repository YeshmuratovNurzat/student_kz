import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageDetailWidget extends StatefulWidget {
  const MessageDetailWidget({Key? key}) : super(key: key);

  @override
  State<MessageDetailWidget> createState() => _MessageDetailWidgetState();
}

class _MessageDetailWidgetState extends State<MessageDetailWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nurzat Yeshmuratov"),centerTitle: true),
      body: ListView.builder(itemBuilder: (BuildContext context, int index){

      }),
    );
  }

}
