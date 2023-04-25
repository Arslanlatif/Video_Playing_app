import 'package:arflix/mainScreens/ChewieVideoPlayer.dart';
import 'package:arflix/modelClasses_And_Mixin/modelClassOfData.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.modelClassOfData});
  final ModelClassOfData modelClassOfData;
  static const activityName = '/detailScreen';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    final screenWidth = size.width;
    final topBarHeight = MediaQuery.of(context).padding.top;
    final clientHeight = screenHeight - kToolbarHeight - topBarHeight;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 35, 35),
        title: Text(
          widget.modelClassOfData.title,
          style: TextStyle(color: Colors.grey.withOpacity(0.9)),
        ),
      ),
      body: Container(
        height: clientHeight,
        color: Colors.black,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ! Poster Image
              Padding(
                padding: EdgeInsets.only(top: clientHeight * 0.1),
                child: Center(
                  child: Hero(
                    tag: widget.modelClassOfData.title,
                    child: Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.black,
                            height: clientHeight * 0.4,
                            child: Image.asset(
                                widget.modelClassOfData.posterImage))),
                  ),
                ),
              ),

              // ! Button For Video Play
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: clientHeight * 0.02),
                  child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size.fromWidth(screenWidth * 0.9),
                            backgroundColor:
                                const Color.fromARGB(255, 255, 17, 0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChewieVideoPlayer(
                                    modelClassOfData: widget.modelClassOfData),
                              ));
                        },
                        child: Text(
                          'Play',
                          style: TextStyle(
                              fontSize: clientHeight * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ),
                ),
              ),

              // ! Title Text
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: Chip(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.02)),
                      shadowColor: Colors.grey.withOpacity(0.2),
                      backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                      elevation: 10,
                      label: Text(widget.modelClassOfData.title),
                      labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),

              // ! Discription Text
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.02,
                      left: screenWidth * 0.05,
                      right: screenWidth * 0.05),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        widget.modelClassOfData.dicription,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      )),
                ),
              ),
            ]),
      ),
    );
  }
}
