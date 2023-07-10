import 'package:flutter/material.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({Key? key}) : super(key: key);

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();

}

class _UserProfileWidgetState extends State<UserProfileWidget> {

  void _settingsBtnClick(){
    final navigator = Navigator.of(context);
    navigator.pushNamed("/settings");
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(20); // Image border
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: _settingsBtnClick, icon: Icon(Icons.settings, color: Colors.grey,))
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
                "Профиль",
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
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black.withOpacity(0.2)),
                          borderRadius: borderRadius),
                      child: ClipRRect(
                        borderRadius: borderRadius,
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(65), // Image radius
                          child: Image.asset('images/photo.jpg', fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text("Nurzat Yeshmuratov",
                          style: TextStyle(color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),),
                        Text("Физика и астрономия",
                          style: TextStyle(color: Colors.black),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 35),
                Text("Казахский национальный университет имени аль-фараби (КазНУ)",
                    style: TextStyle(color: Colors.black,
                        fontSize: 15)),
                SizedBox(height: 10),
                Text("Алматы, Алматы, Казахстан",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,)),
                SizedBox(height: 10),
                Text("450 контактов",
                  style: TextStyle(color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 2)
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Основная информация",
                            style: TextStyle(color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),),
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                        ],
                      ),
                      SizedBox(height: 8),
                      Text("Nurzat Yeshmuratov, 22 года",
                        style: TextStyle(color: Colors.black,
                            fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Almaty",
                          style: TextStyle(color: Colors.black,
                              fontSize: 15)),
                      SizedBox(height: 5),
                      Text("nyeshmuratov@gmail.com",
                          style: TextStyle(color: Colors.black,
                              fontSize: 15)),
                      SizedBox(height: 5),
                      Text("+7 (777) 039 44 35",
                          style: TextStyle(color: Colors.black,
                              fontSize: 15)),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 2)
                        )
                      ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Образование",
                            style: TextStyle(color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.edit)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text("Казахский национальный университет имени аль-фараби (КазНУ)",
                          style: TextStyle(color: Colors.black,
                              fontSize: 15)),
                      SizedBox(height: 5),
                      Text("Бакалавр",
                        style: TextStyle(),
                        textAlign: TextAlign.center,),
                      SizedBox(height: 5),
                      Text("Физика и астрoномия",
                        style: TextStyle(),
                        textAlign: TextAlign.center,),
                      SizedBox(height: 5),
                      Text("сент.. 2018. - июль 2022.",
                        style: TextStyle(),
                        textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
