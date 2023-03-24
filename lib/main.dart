//      Flutter's Open Source Project
// ************************************************

//  Welcome to the Flutter First Contribution!
// Yes, This is the first file you gonna open in the whole project.
// Make necessary changes as per the guidelines in readme.md and make a pull request
/* If you are very beginner in flutter and know literally nothing then you 
 simply go to contributor's data list file and add your data there no need to do anything.
 File is located in (data -> contributor_data.dart) add your data at the bottom of the List
 */
// Continue learning flutter. It's really a fun :) ;

// ************************************************

import 'package:flutter/material.dart';
import 'package:flutter_first_contribution/screens/homepage/home.dart';
import 'package:flutter_first_contribution/styles/theme.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const HomePage(),
    );
  }
}
