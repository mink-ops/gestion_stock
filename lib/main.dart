import 'package:flutter/material.dart';
import 'package:gestion_stock/pages/dashboard.dart';
import 'package:gestion_stock/pages/inventaire.dart';
import 'pages/signup_pages.dart';
import 'pages/login_page.dart';
import 'pages/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/signup': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/navbar': (context) => Navbar(
              selectedIndex: 0,
              onTabSelected: (index) {},
            ),
        '/dashboard': (context) => Dashboard(),
        '/inventaire': (context) => InventairePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff061C2B),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(height: 50),
            Image.asset(
              'images/stock.png',
              height: 150,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            const Text(
              'STOCK NEX',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 300),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Commencer',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
