import 'package:flutter/material.dart';
import 'package:kakao_demo/screens/home.dart';
import 'package:kakao_demo/screens/my_kakao.dart';
import 'package:kakao_demo/screens/service.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late int _currentPageIndex;

  @override
  void initState() {
    super.initState();
    _currentPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black54,
        title: const Text("Kakao Demo"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.redAccent)),
        ],
      ),
      body: _bodyWidget(),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        currentIndex: _currentPageIndex,
        items: const [
          BottomNavigationBarItem(
            label: "홈",
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home_max_outlined),
          ),
          BottomNavigationBarItem(
            label: "이용서비스",
            icon: Icon(Icons.assignment),
            activeIcon: Icon(Icons.assignment_ind_outlined),
          ),
          BottomNavigationBarItem(
            label: "이용정보",
            icon: Icon(Icons.account_circle),
            activeIcon: Icon(Icons.access_alarm_outlined),
          ),
        ],

      ),
    );
  }

  Widget _bodyWidget() {
    switch (_currentPageIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ServiceScreen();
      default:
        return const MyKakaoScreen();
    }
  }
}