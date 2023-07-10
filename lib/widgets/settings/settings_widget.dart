import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [

        ],
        flexibleSpace: Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Настройки",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.language)),
                        Text("Язык",
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),),
                        SizedBox(width: 160),
                        Text("English",
                          style: TextStyle(color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode_outlined)),
                    Text("Dark Mode",
                      style: TextStyle(color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    SizedBox(width: 160),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.help_outline)),
                    Text("Help",
                      style: TextStyle(color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    SizedBox(width: 235),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined)),
                    Text("Log out",
                      style: TextStyle(color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    SizedBox(width: 207),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded)),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.insert_drive_file_outlined)),
                    Text("FAQ",
                      style: TextStyle(color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),
                    SizedBox(width: 241),
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
