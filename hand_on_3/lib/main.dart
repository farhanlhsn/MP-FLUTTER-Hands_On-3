import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:icons_plus/icons_plus.dart';

void main() async {
  runApp(const MainApp());
}

Future<void> _launchInAppWithBrowserOptions(Uri url) async {
  try {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppBrowserView,
      browserConfiguration: const BrowserConfiguration(showTitle: true),
    )) {
      throw Exception('Could not launch $url');
    }
  } catch (e) {
    // Handle error if needed
    print('Error launching URL: $e');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xFF3F51B5); // Indigo
    const Color secondaryColor = Color(0xFF303F9F); // Indigo yang lebih gelap
    const Color backgroundColor = Color(0xFFE8EAF6); // Indigo yang sangat cerah
    const Color textColor = Colors.white;
    const Color shadowColor = Color(0xFF9FA8DA); // Indigo yang lebih muda
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Row(
            children: [
              Icon(Bootstrap.person, color: textColor),
              const SizedBox(width: 10),
              const Text(
                'Profil Saya',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(150),
                  image: const DecorationImage(
                    image: AssetImage('assets/FARHAN.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  border: Border.all(color: primaryColor, width: 3),
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor,
                      spreadRadius: 3,
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.indigo,
                width: 250,
                height: 50,
                child: const Center(
                  child: Text(
                    'Muhammad Farhan Al Hasan',
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.indigo,
                width: 250,
                height: 50,
                child: const Center(
                  child: Text(
                    '103012330007',
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.indigo,
                width: 250,
                height: 50,
                child: const Center(
                  child: Text(
                    'Informatika 2023',
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Bootstrap.instagram, color: primaryColor),
                    onPressed: () {
                      _launchInAppWithBrowserOptions(
                        Uri.parse('https://www.instagram.com/farhanlhsn'),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Bootstrap.github, color: primaryColor),
                    onPressed: () {
                      _launchInAppWithBrowserOptions(
                        Uri.parse('https://github.com/farhanlhsn'),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Bootstrap.linkedin, color: primaryColor),
                    onPressed: () {
                      _launchInAppWithBrowserOptions(
                        Uri.parse('https://www.linkedin.com/in/mfarhanalhasan'),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
