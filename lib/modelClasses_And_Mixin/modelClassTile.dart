import 'package:arflix/mainScreens/detailScreen.dart';
import 'package:arflix/modelClasses_And_Mixin/modelClassOfData.dart';
import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final ModelClassOfData modelClassOfData;

  const MovieTile({super.key, required this.modelClassOfData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    DetailScreen(modelClassOfData: modelClassOfData),
                reverseTransitionDuration: const Duration(seconds: 1),
                transitionDuration: const Duration(seconds: 2)),
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
                color: Colors.brown.withOpacity(0.2),
                elevation: 5,
                shadowColor: Colors.grey,
                child: Text(
                  modelClassOfData.title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
