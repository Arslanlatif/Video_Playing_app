import 'package:arflix/mainScreens/detailScreen.dart';
import 'package:arflix/mainScreens/signInScreen.dart';
import 'package:arflix/mainScreens/signUpScreen.dart';
import 'package:arflix/mainScreens/splashScreen.dart';
import 'package:arflix/generateRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'bottomNavigationScreens/homeScreen.dart';
import 'bottomNavigationScreens/profileScreen.dart';
import 'bottomNavigationScreens/searchScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyHomePage.activityName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  static const activityName = '/';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //! List of bottomNavigationBar's Screens
    final List<Widget> screens = [
      const HomeScreen(),
      const SearchScreen(),
      const ProfileScreen(),
    ];

    //! WillPopScope is used to block going back to privious Screnn
    return WillPopScope(
      onWillPop: () async => false,

      // ! AnnotatedRegion is used to change to system ui i.e botton bar.
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Color.fromARGB(255, 36, 35, 35),
        ),
        child: Scaffold(
            body: screens[currentIndex],
            // ! bottomNavigationBar
            bottomNavigationBar: Container(
              color: const Color.fromARGB(255, 36, 35, 35),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                // Google navigation is a package
                child: GNav(
                  gap: 8,
                  color: const Color.fromARGB(255, 145, 145, 145),
                  activeColor: const Color.fromARGB(255, 145, 145, 145),
                  tabBackgroundColor:
                      const Color.fromARGB(255, 66, 59, 56).withOpacity(0.4),
                  padding: const EdgeInsets.all(16),
                  selectedIndex: currentIndex,
                  onTabChange: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  tabs: const [
                    GButton(icon: Icons.home, text: 'Home'),
                    GButton(
                      icon: Icons.search,
                      text: 'Search',
                    ),
                    GButton(icon: Icons.person, text: 'Profile')
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
