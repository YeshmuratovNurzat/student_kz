import 'package:flutter/material.dart';
import 'package:student_kz/widgets/home/home_widget.dart';
import 'package:student_kz/widgets/message/message_widget.dart';
import 'package:student_kz/widgets/profile/user_profile_widget.dart';
import 'package:student_kz/widgets/friends/friends_widget.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int _selectedTab = 0;

  void onSelected(int index) {
    if(_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Главная"),
          BottomNavigationBarItem(icon: Icon(Icons.switch_account_outlined), label: "Сеть"),
          BottomNavigationBarItem(icon: Icon(Icons.add_comment_outlined), label: "Публикация"),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "Сообщения"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp), label: "Профиль"),
        ],
        onTap: onSelected,
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          HomeWidget(),
          FriendsWidget(),
          Text('Публикация'),
          MessageWidget(),
          UserProfileWidget()
        ],
      ),
    );
  }
}
