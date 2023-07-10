import 'package:flutter/material.dart';
import 'package:student_kz/widgets/auth/auth_widget.dart';
import 'package:student_kz/widgets/auth/forgot_password_widget.dart';
import 'package:student_kz/widgets/auth/password_widget.dart';
import 'package:student_kz/widgets/auth/registration_widget.dart';
import 'package:student_kz/widgets/auth/sign_up_widget.dart';
import 'package:student_kz/widgets/auth/phone_verification_widget.dart';
import 'package:student_kz/widgets/home/main_widget.dart';
import 'package:student_kz/widgets/notifications/notifications_widget.dart';
import 'package:student_kz/widgets/settings/settings_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey
        )
      ),
      routes: <String, WidgetBuilder>{
      '/auth': (context) => AuthWidget(),
      '/signUp': (context) => SignUpWidget(),
      '/registration': (context) => RegistrationWidget(),
      '/forgotPassword': (context) => ForgotPasswordWidget(),
      '/phoneVerification': (context) => PhoneVerificationWidget(),
      '/password': (context) => PasswordWidget(),
      '/main': (context) => MainWidget(),
      '/notifications': (context) => NotificationsWidget(),
      '/settings': (context) => SettingsWidget(),
      '/messageDetail': (context) => SettingsWidget(),
      },
      initialRoute: '/auth',
    );
  }
}
