import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  void _btnMessage(){
    final navigator = Navigator.of(context);
    navigator.pushNamed("/notifications");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: _btnMessage, icon: Icon(Icons.notifications_none_outlined))
        ],
        title: Stack(children: <Widget>[
          TextField(
            decoration: InputDecoration(
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                prefixIcon: Icon(Icons.search_outlined),
                prefixIconColor: Colors.blue,
                fillColor: Colors.white.withAlpha(235),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                hintText: "Поиск"),
          ),
        ]),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            // decoration: BoxDecoration(
            //     color: Colors.white,
            //     border: Border.all(color: Colors.black.withOpacity(0.2)),
            //     borderRadius: BorderRadius.all(Radius.circular(12)),
            //     boxShadow: [
            //       BoxShadow(
            //           color: Colors.black.withOpacity(0.1),
            //           blurRadius: 8,
            //           offset: Offset(0, 2))
            //     ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.black.withOpacity(0.2)),
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(25), // Image radius
                            child: Image.asset('images/photo.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nurzat Yeshmuratov",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "Android Developer",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(width: 125),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_control_outlined))
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("dssfdfdfdfgdgsdsdvsvvs")),
                SizedBox(height: 10),
                Image(
                    width: double.infinity,
                    image: AssetImage("images/photo.jpg")),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.comment_outlined)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.send_outlined)),
                  ],
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
                Divider(thickness: 5),
              ],
            ),
          );
        },
      ),
    );
  }
}
