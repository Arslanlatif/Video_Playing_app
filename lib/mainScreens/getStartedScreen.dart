import 'package:arflix/mainScreens/signInScreen.dart';
import 'package:arflix/mainScreens/signUpScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});
  static const activityName = '/getStartedScreen';

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  int _currentIndex = 0;

  final List<String> pictures = [
    'assets/images/interstellar.png',
    'assets/images/inception.png',
    'assets/images/memento.png',
    'assets/images/harrypoter.png'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    final screenWidth = size.width;
    final topBarHeight = MediaQuery.of(context).padding.top;
    final clientHeight = screenHeight - kToolbarHeight - topBarHeight;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.black.withOpacity(0.9)),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
              automaticallyImplyLeading: false,
              // toolbarHeight: screenHeight * 0.1,
              elevation: 30,
              backgroundColor: Colors.black.withOpacity(0.9),
              leading: Image.asset(
                'assets/images/netflix.png',
                fit: BoxFit.cover,
              ),
              actions: [
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, SignInScreen.activityName),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.03, right: screenHeight * 0.03),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: Colors.white, fontSize: screenHeight * 0.024),
                    ),
                  ),
                )
              ]),
          body: Container(
            color: Colors.black.withOpacity(0.9),
            height: clientHeight,
            width: screenWidth,
            child: Stack(children: [
              //! CarouselSlider
              Positioned(
                top: 2.0,
                right: 0.0,
                left: 0.0,
                bottom: 60.0,
                child: CarouselSlider(
                    items: pictures
                        .map((item) => Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: screenWidth,
                              height: clientHeight,
                            ))
                        .toList(),
                    options: CarouselOptions(
                      aspectRatio: 0.7,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      onPageChanged: (index, reason) =>
                          setState(() => _currentIndex = index),
                    )),
              ),

              // ! Elevated button for Get Started
              Positioned(
                bottom: 35.0,
                left: 13.0,
                right: 13.0,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenWidth * 0.6, clientHeight * 0.08),
                      backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, SignUpScreen.activityName),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white, fontSize: clientHeight * 0.03),
                    )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
