import 'package:arflix/mainScreens/getStartedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const activityName = '/profileScreen';
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
 

  @override
  Widget build(BuildContext context) {
    final clientHeight = MediaQuery.of(context).size.height - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.6),
        leading: Image.asset(
          'assets/images/netflix.png',
          fit: BoxFit.cover,
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          color: Colors.grey,
          child: Center(
              child: InkWell(
            onTap: () =>
                Navigator.pushNamed(context, GetStartedScreen.activityName),
            child: PhysicalModel(
              color: Colors.grey,
              elevation: 20,
              shadowColor: Colors.black,
              borderRadius: BorderRadius.circular(10),
              child: Text(
                'SignOut',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: clientHeight * 0.03),
              ),
            ),
          ))),
    );
  }
}
