import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/HomeUi.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    //เรียกใช้งานคราสที่เรียกใช้ widget
    FlutterSpeeduiApp(),
  );
}

class FlutterSpeeduiApp extends StatefulWidget {
  const FlutterSpeeduiApp({super.key});

  @override
  State<FlutterSpeeduiApp> createState() => _FlutterSpeeduiAppState();
}

class _FlutterSpeeduiAppState extends State<FlutterSpeeduiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeUi(),
        theme: ThemeData(
            textTheme:
                GoogleFonts.kanitTextTheme(Theme.of(context).textTheme)));
  }
}
