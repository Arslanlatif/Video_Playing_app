import 'package:arflix/mainScreens/ChewieVideoPlayer.dart';
import 'package:arflix/modelClasses_And_Mixin/modelClassTile.dart';
import 'package:flutter/material.dart';

import '../modelClasses_And_Mixin/modelClassOfData.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static const activityName = '/searchScreen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final clientHeight = MediaQuery.of(context).size.height - kToolbarHeight;
    final screenWidth = MediaQuery.of(context).size.width;

    List<ModelClassOfData> recommendatationList = [
      ModelClassOfData(
          title: 'Interstellar9',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Memento9',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Inception9',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity9',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
      ModelClassOfData(
          title: 'Harry Potter9',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Narnia9',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Pianist9',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
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
            'Search',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey.withOpacity(0.9),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SearchTextFormField
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(
                    top: clientHeight * 0.01,
                    left: screenWidth * 0.1,
                    right: screenWidth * 0.1),
                child: Hero(
                  tag: 'searchIt',
                  child: Material(
                    color: Colors.grey.withOpacity(0.8),
                    elevation: 10,
                    shadowColor: Colors.black,
                    borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    child: TextFormField(
                      autofocus: false,
                      readOnly: true,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIconColor: Colors.black,
                        prefixIcon: const Icon(Icons.search),
                        fillColor: Colors.grey.withOpacity(0.9),
                        filled: true,

                        // ! All Borders
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 129, 125, 125),
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.05))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 129, 125, 125)),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.05))),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Text for Recommendatation
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.06),
              child: Expanded(
                flex: 1,
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.02)),
                    backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    elevation: 10,
                    shadowColor: Colors.grey.withOpacity(0.4),
                    label: Text(
                      'Your Search Recommendatations',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.9),
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),

            //  Recommendatation List
            Expanded(
              flex: 8,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: recommendatationList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.06),
                        child: Container(
                            color: Colors.black,
                            height: clientHeight * 0.14,
                            width: screenWidth * 0.3,
                            child: MovieTile(
                                modelClassOfData: recommendatationList[index])),
                      ),
                      SizedBox(
                        height: clientHeight * 0.16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.45),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChewieVideoPlayer(
                                        modelClassOfData:
                                            recommendatationList[index]),
                                  ));
                            },
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.grey.withOpacity(0.9),
                            ),
                            color: Colors.white,
                            iconSize: clientHeight * 0.07),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ));
  }
}
