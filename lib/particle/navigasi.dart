import 'package:doctor/page/home.dart';
import 'package:doctor/page/location.dart';
import 'package:doctor/page/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<Widget> page = [Home(), Message(), Location()];

class Navigasi extends StatefulWidget {
  @override
  _NavigasiState createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {
  int _currentIndex = 0;

  // Fungsi untuk memanggil setState dan mengubah indeks halaman
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Implementasikan halaman-halaman yang sesuai dengan indeks

    return Scaffold(
      body: page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30.0,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'asset/images/icon/home3.svg',
              color: _currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'asset/images/icon/message.svg',
              color: _currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'asset/images/icon/map.svg',
              color: _currentIndex == 2 ? Colors.blue : Colors.grey,
            ),
            label: 'Location',
          ),
        ],
      ),
    );
  }
}
