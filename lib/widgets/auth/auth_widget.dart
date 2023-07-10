import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_kz/widgets/utils/PhoneInputFormatter.dart';

class AuthWidget extends StatefulWidget {

  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();

}

class _AuthWidgetState extends State<AuthWidget> {

  void _forgotPasswordBtn(){
    final navigator = Navigator.of(context);
    navigator.pushNamed("/forgotPassword");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
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
                  SizedBox(height: 10),
                  Text(
                    "Войти",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blue
                    ),),
                  SizedBox(height: 5),
                  Text(
                    "Введите свои учетные данные",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue
                    ),),
                  SizedBox(height: 25),
                  _InputWidget(),
                  TextButton(onPressed: _forgotPasswordBtn, child: Text("Забыли пароль?")),
                  SizedBox(height: 25),
                  _ButtonWidget(),
                  SizedBox(height: 30)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // AppBar
  AppBar _buildAppBar() {
    return AppBar(
    toolbarHeight: 80,
    elevation: 0.0,
    flexibleSpace: Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Student.kz",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35
              ),)
          ],
        ),
      ),
    ),);
  }

}


class _InputWidget extends StatefulWidget {
  const _InputWidget({Key? key}) : super(key: key);

  @override
  State<_InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<_InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.phone,
          inputFormatters: [PhoneInputFormatter()],
          style: TextStyle(color: Colors.blue),
          decoration: InputDecoration(
              labelText: "Введите номер телефона",
              prefixIcon: Icon(Icons.phone),
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
        SizedBox(height: 15),
        TextField(
          style: TextStyle(color: Colors.blue),
          decoration: InputDecoration(
              labelText: "Пароль",
              prefixIcon: Icon(Icons.vpn_key_outlined),
              prefixIconColor: Colors.blue,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              suffixIconColor: Colors.blue,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.blue)
              )
          ),
        ),
      ],
    );
  }
}

class _ButtonWidget extends StatefulWidget {
  const _ButtonWidget({Key? key}) : super(key: key);

  @override
  State<_ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<_ButtonWidget> {


  void _createNewAccountBtn() {
    final navigator = Navigator.of(context);
    navigator.pushNamed('/signUp');
  }

  void _nextBtn(){
    final navigator = Navigator.of(context);
    navigator.pushNamed("/main");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              onPressed: _nextBtn,
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )
                  )
              ),
              child: Text("Продолжить",style: TextStyle(fontSize: 18),)),
        ),
        SizedBox(height: 10),
        Divider(color: Colors.blue),
        SizedBox(height: 25),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
              onPressed: _createNewAccountBtn,
              style: ButtonStyle(
                  side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(
                          color: Colors.blue
                      )
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                      )
                  )
              ),
              child: Text("Присоединиться к Student.kz")),
        ),
        SizedBox(height: 15),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
              onPressed: (){},
              style: ButtonStyle(
                  side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(
                        color: Colors.blue,
                      )
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      )
                  )
              ),
              child: Text("Войти с помощью Google")),
        ),
      ],
    );
  }
}


