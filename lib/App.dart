
import 'package:driver_apps/Ui/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

class DriverApp extends StatelessWidget {
  const DriverApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Driver App",
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.amber,
          inputDecorationTheme: const InputDecorationTheme(
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,

              )
          ),
          textTheme: TextTheme(
             titleLarge: TextStyle(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
               letterSpacing: 0.6
             ),
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
              fixedSize: Size.fromWidth(double.infinity)
            )
          )
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark
      ),
      themeMode: ThemeMode.light,

      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}