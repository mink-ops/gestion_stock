import 'package:flutter/material.dart';
import 'navbar.dart';
import 'inventaire.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardContent(),
    const InventairePage(),
    const Center(child: Text('Contenu des Transactions')),
    const Center(child: Text('Contenu des États')),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(
        selectedIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);
  static const List<String> gridTexts = [
    'Premier texte',
    'Deuxième texte',
    'Troisième texte',
    'Quatrième texte',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2, //
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        childAspectRatio: 1.6,
        children: List.generate(gridTexts.length, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.0),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: const Color(0xbacbcaca),
                width: 2.0,
              ),
            ),
            child: Center(
              child: Text(
                gridTexts[index],
                style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
