import 'package:flutter/material.dart';

import 'card1.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedPage = 0;

  final List<Widget> _pages = [
    const Card1(),
    Container(
      color: Colors.lime,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
  ];

  final List<String> _appbarTitles = ['Tab1', 'Tab2', 'Tab3'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appbarTitles[_selectedPage],
// 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
// TODO: Show selected tab
      body: _pages[_selectedPage],
// 4
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedPage,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
// TODO: Set selected tab bar
// 6
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
