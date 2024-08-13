import 'package:flutter/material.dart';
import 'pages/signup_pages.dart';
import 'pages/login_page.dart'; 
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
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff061731), 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(), 
            Text(
              'Gestion',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height:
                    300),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), 
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 16), 
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/login'); 
                },
                child: Text(
                  'Commencer',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
