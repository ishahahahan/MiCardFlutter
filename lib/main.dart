import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('image/me.jpg'),
              ),
              Text(
                'ishan das',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'IMFellDWPica'),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    color: Colors.teal[100],
                    fontSize: 12,
                    fontFamily: 'Source Sans Pro',
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      '+91 96358 72209',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                          color: Colors.teal.shade900),
                    ),
                    onTap: () async {
                      Uri phoneno = Uri.parse('tel:+919635872209');
                      if (await launchUrl(phoneno)) {
                        launchUrl(phoneno);
                      } else {
                        AlertDialog(
                          content: Text('Can\'t Call'),
                        );
                      }
                    },
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      'ishand1005@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                          color: Colors.teal.shade900),
                    ),
                    onTap: () {
                      final mailToUri = Uri(
                          scheme: 'mailto',
                          path: 'ishand1005@gmail.com',
                          queryParameters: {'mailto': 'ishand1005@gmail.com'});
                      print(mailToUri);
                      launchUrl(mailToUri);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
