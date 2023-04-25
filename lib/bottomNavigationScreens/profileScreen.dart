import 'package:arflix/mainScreens/getStartedScreen.dart';
import 'package:flutter/material.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;

    //List for  Profile Images
    List profileImagesList = [
      'assets/images/erenYeager.jpg',
      'assets/images/goku.jpg',
      'assets/images/itachi.jpg',
      'assets/images/luffi.jpg',
      'assets/images/goko.jpg',
    ];

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 36, 35, 35),
          leading: Image.asset(
            'assets/images/netflix.png',
            fit: BoxFit.cover,
          ),
          title: Text(
            'Profile',
            style: TextStyle(
                color: Colors.grey.withOpacity(0.9),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            // Profile Images
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.black,
                height: clientHeight * 0.2,
                child: ListView.builder(
                  itemCount: profileImagesList.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(screenWidth * 0.01),
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(
                            height: clientHeight * 0.2,
                            width: screenWidth * 0.2,
                            child: Image.asset(profileImagesList[index])),
                      ],
                    );
                  },
                ),
              ),
            ),

            // Text for Manage Profile
            Expanded(
              flex: 2,
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(top: clientHeight * 0.04),
                child: Text(
                  'Manage Profile',
                  style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.bold),
                ),
              )),
            ),

            // Profile Atributes
            Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.only(bottom: clientHeight * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // My List Tile
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.03, right: screenWidth * 0.03),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.03)),
                        tileColor: const Color.fromARGB(255, 36, 35, 35),
                        leading: Icon(
                          Icons.menu,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                        title: Text(
                          'My List',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.forward,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    ),

                    // Settings Tile
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.02,
                          left: screenWidth * 0.03,
                          right: screenWidth * 0.03),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.03)),
                        tileColor: const Color.fromARGB(255, 36, 35, 35),
                        leading: Icon(
                          Icons.settings,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                        title: Text(
                          'My Settings',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.forward,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    ),

                    // SignOut Tile
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.02,
                          left: screenWidth * 0.03,
                          right: screenWidth * 0.03),
                      child: ListTile(
                        onTap: () => Navigator.pushNamed(
                            context, GetStartedScreen.activityName),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.03)),
                        tileColor: const Color.fromARGB(255, 36, 35, 35),
                        leading: Icon(
                          Icons.logout,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                        title: Text(
                          'Sign Out',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.forward,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
