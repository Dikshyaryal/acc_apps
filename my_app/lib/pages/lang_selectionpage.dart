import 'package:my_app/pages/en_mainpage.dart';
import 'package:flutter/material.dart';

class LangSelectionPage extends StatelessWidget {
  const LangSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage('assets/images/logo_image.png'),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Let Me Talk',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.normal,
                fontSize: 50.0,
                color: Colors.black,
              ),
            ),
            const Text(
              'AAC learning app for children with Autism',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50.0,
              width: 150.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnMainPage(),
                  ),
                );
              },
              child: const Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Text(
                      'En',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Text(
                      'English Language',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

