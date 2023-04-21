import 'package:arflix/mainScreens/detailScreen.dart';
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
      initialRoute: SplashScreen.activityName,
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

    return WillPopScope(
      onWillPop: () async => false,
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.brown.withOpacity(0.2)),
        child: Scaffold(
            body: screens[currentIndex],
            // ! bottomNavigationBar
            bottomNavigationBar: Container(
              color: Colors.brown.withOpacity(0.2),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: GNav(
                  gap: 8,
                  backgroundColor: Colors.brown.withOpacity(0.0),
                  color: Colors.white,
                  activeColor: Colors.white,
                  tabBackgroundColor: Colors.brown.withOpacity(0.4),
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
