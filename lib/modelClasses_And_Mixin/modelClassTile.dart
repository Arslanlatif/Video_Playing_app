import 'package:arflix/mainScreens/detailScreen.dart';
import 'package:arflix/modelClasses_And_Mixin/modelClassOfData.dart';
import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final ModelClassOfData modelClassOfData;

  const MovieTile({super.key, required this.modelClassOfData});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: const Color.fromARGB(255, 36, 35, 35),
      elevation: 20,
      shadowColor: Colors.grey.withOpacity(0.4),
      borderRadius:
          BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      DetailScreen(modelClassOfData: modelClassOfData),
                  reverseTransitionDuration: const Duration(seconds: 1),
                  transitionDuration: const Duration(seconds: 1)),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ! Poster Image
              Expanded(
                flex: 1,
                child: Hero(
                  tag: modelClassOfData.title,
                  child: Center(
                    child: Image.asset(
                      modelClassOfData.posterImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // ! Title Text
              Center(
                child: Material(
                  color: Colors.black.withOpacity(0.0),
                  elevation: 5,
                  shadowColor: Colors.black,
                  child: Text(
                    modelClassOfData.title,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
