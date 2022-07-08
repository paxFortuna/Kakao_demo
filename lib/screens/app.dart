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
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: IconButton(onPressed: () {},
                icon: const Icon(Icons.search_rounded, color: Colors.redAccent, size: 20,)
            ),
          ),
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
            icon: Icon(Icons.account_circle),
            activeIcon: Icon(Icons.access_alarm_outlined),
            label: "이용정보",
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