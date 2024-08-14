import 'package:flutter/material.dart';
import 'package:moments/presentation/album_main/album_main_screen.dart';
import 'package:moments/presentation/calendar_main/calendar_main_screen.dart';
import 'package:moments/presentation/chat_main/chat_main_screen.dart';
import 'package:moments/presentation/profile_main/profile_main_screen.dart';

class MainScreenViewModel with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  List<Widget> _screens = [];
  List<Widget> get screens => _screens;

  MainScreenViewModel() {
    _screens = [
      const CalendarMainScreen(),
      const ChatMainScreen(),
      const AlbumMainScreen(),
      const ProfileMainScreen(),

      //view모델 생성시 의존성 주입 예시
      // ChangeNotifierProvider(
      //   create: (context) => getIt<HomeScreenViewModel>(),
      //   child: const HomeScreen(),
      // ),
    ];
  }

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
