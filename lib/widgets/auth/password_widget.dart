import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({Key? key}) : super(key: key);

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {

  void _btnNext(){
    final navigator = Navigator.of(context);
    navigator.pushNamed("/main");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 2)
                    )
                  ]
              ),
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Создание пароля",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                    ),),
                  SizedBox(height: 5),
                  Text(
                    "Зарегистрируйтесь к Student.kz",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue
                    ),),
                  SizedBox(height: 25),
                  TextField(
                    style: TextStyle(
                        color: Colors.blue
                    ),
                    decoration: InputDecoration(
                        labelText: "Пароль",
                        prefixIcon: Icon(Icons.vpn_key_outlined),
                        prefixIconColor: Colors.blue,
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        )
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    style: TextStyle(
                        color: Colors.blue
                    ),
                    decoration: InputDecoration(
                        labelText: "Повторите пароль",
                        prefixIcon: Icon(Icons.vpn_key_outlined),
                        prefixIconColor: Colors.blue,
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        )
                    ),

                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: _btnNext,
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                )
                            )
                        ),
                        child: Text("Продолжить",style: TextStyle(fontSize: 18),)),
                  ),
                  SizedBox(height: 30)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
