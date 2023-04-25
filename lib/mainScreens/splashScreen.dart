import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:arflix/mainScreens/getStartedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const activityName = '/splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> opacityAnimation;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    super.initState();
    // Animation Controller
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.pushReplacementNamed(
                  context, GetStartedScreen.activityName);
            }
          });

    // Fade Transition
    opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);

    // Slide Transition
    offsetAnimation = Tween(begin: const Offset(1, 0), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(systemNavigationBarColor: Colors.black),
      child: Material(
        child: Container(
            color: Colors.black,
            child: FadeTransition(
              opacity: opacityAnimation,
              child: Center(
                child: TextLiquidFill(
                  text: 'NETFLIX',
                  waveColor: Colors.red,
                  boxBackgroundColor: Colors.black,
                  textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                  loadDuration: const Duration(seconds: 3),
                  waveDuration: const Duration(seconds: 2),
                ),
              ),
            )),
      ),
    );
  }
}

/**
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//   static const activityName = '/splashScreen';

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     final screenHeight = size.height;

//     return Material(
//       child: Container(
//         color: Colors.black,
//         child: Center(
//           child: TextLiquidFill(
//             text: 'NETFLIX',
//             waveColor: Colors.red,
//             boxBackgroundColor: Colors.black,
//             textStyle: TextStyle(
//               fontSize: screenHeight * 0.1,
//               fontWeight: FontWeight.bold,
//             ),
//             loadDuration: const Duration(seconds: 3),
//             waveDuration: const Duration(seconds: 2),
//           ),
//         ),
//       ),
//     );
//   }
// }
 */