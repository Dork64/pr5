import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Мое приложение'),
        ),
        body: Center(
          child: PlatformApp(),
        ),
      ),
    );
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String platformMessage = 'Неизвестная платформа';

    if (kIsWeb) {
      platformMessage = 'Ваша платформа - веб-браузер';
    } else if (Platform.isAndroid) {
      platformMessage = 'Ваша платформа - Android';
    } else if (Platform.isIOS) {
      platformMessage = 'Ваша платформа - iOS';
    } else if (Platform.isWindows) {
      platformMessage = 'Ваша платформа - Windows';
    } else if (Platform.isMacOS) {
      platformMessage = 'Ваша платформа - macOS';
    } else if (Platform.isLinux) {
      platformMessage = 'Ваша платформа - Linux';
    }

    return Text(
      platformMessage,
      style: TextStyle(fontSize: 30),
    );
  }
}