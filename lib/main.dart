import 'package:app_localisation_practice/app_localization.dart';
import 'package:app_localisation_practice/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('en'),
        Locale('ar')
      ],
      localizationsDelegates:const [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales){
          if (deviceLocale !=null && deviceLocale.languageCode==locale.languageCode){
            return deviceLocale ;
          }
          return supportedLocales.first ;
        }
        return null ;
        
      },
      home:const  HomeScreen(),
    );
  }
}