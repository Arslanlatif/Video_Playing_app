import 'package:arflix/bottomNavigationScreens/searchScreen.dart';
import 'package:arflix/modelClasses_And_Mixin/modelClassOfData.dart';
import 'package:arflix/modelClasses_And_Mixin/modelClassTile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const activityName = '/homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final clientHeight = screenHeight - kToolbarHeight;
    final screenWidth = MediaQuery.of(context).size.width;

    // ! for single View
    ModelClassOfData singleViewData = ModelClassOfData(
        title: 'Harry Potter5',
        posterImage: 'assets/images/harrypoter.png',
        videoUrl: 'assets/videos/HarryPotter.mp4',
        dicription:
            'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.');

    // ! List for Continue Watching
    List<ModelClassOfData> continueWatchingList = [
      ModelClassOfData(
          title: 'Interstellar',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Memento',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Inception',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
      ModelClassOfData(
          title: 'Harry Potter',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Narnia',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Pianist',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
      ModelClassOfData(
          title: 'Interstellar2',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Memento2',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Inception2',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity2',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
      ModelClassOfData(
          title: 'Harry Potter2',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Narnia2',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Pianist2',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
    ];

    // ! List for top 10 Movies in Pakistan
    List<ModelClassOfData> topMoviesList = [
      ModelClassOfData(
          title: 'Harry Potter3',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Narnia3',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Pianist3',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
      ModelClassOfData(
          title: 'Interstellar3',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Memento3',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Inception3',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity3',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
      ModelClassOfData(
          title: 'Interstellar4',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Memento4',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Inception4',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity4',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
      ModelClassOfData(
          title: 'Harry Potter4',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Narnia4',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Pianist4',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
    ];

    // ! List for Critically acclaimed Epics
    List<ModelClassOfData> criticallyAcclaimedList = [
      ModelClassOfData(
          title: 'Memento6',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Inception6',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity6',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
      ModelClassOfData(
          title: 'Harry Potter6',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Narnia6',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Interstellar6',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Pianist6',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
    ];

    // ! List for Imaginative Fantasy Movies
    List<ModelClassOfData> imaginativeFantasyList = [
      ModelClassOfData(
          title: 'Narnia7',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Pianist7',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
      ModelClassOfData(
          title: 'Interstellar7',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Harry Potter7',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Memento7',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Inception7',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity7',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
    ];

    // ! List for New Releases
    List<ModelClassOfData> newReleasesList = [
      ModelClassOfData(
          title: 'Inception8',
          posterImage: 'assets/images/inception.png',
          videoUrl: 'assets/videos/Inception.mp4',
          dicription:
              'The film stars Leonardo DiCaprio as a professional thief who steals information by infiltrating the subconscious of his targets. He is offered a chance to have his criminal history erased as payment for the implantation of another person idea into a target subconscious.'),
      ModelClassOfData(
          title: 'Gravity8',
          posterImage: 'assets/images/gravity.png',
          videoUrl: 'assets/videos/Gravity.mp4',
          dicription:
              'Gravity is a 2013 science fiction thriller film directed by Alfonso Cuarón, who also co-wrote, co-edited, and produced the film. It stars Sandra Bullock and George Clooney as American astronauts who attempt to return to Earth after the destruction of their Space Shuttle in orbit.'),
      ModelClassOfData(
          title: 'Harry Potter8',
          posterImage: 'assets/images/harrypoter.png',
          videoUrl: 'assets/videos/HarryPotter.mp4',
          dicription:
              'The series was mainly produced by David Heyman, and stars Daniel Radcliffe, Rupert Grint, and Emma Watson as the three leading characters: Harry Potter, Ron Weasley, and Hermione Granger.'),
      ModelClassOfData(
          title: 'Narnia8',
          posterImage: 'assets/images/narnia.png',
          videoUrl: 'assets/videos/Narnia.mp4',
          dicription:
              'The story follows the four British Pevensie siblings, who are evacuated during the Blitz to the countryside, where they find a wardrobe that leads to the fantasy world of Narnia. There, they must ally with the lion Aslan against the forces of the White Witch, who has placed Narnia in an eternal winter.'),
      ModelClassOfData(
          title: 'Interstellar8',
          posterImage: 'assets/images/interstellar.png',
          videoUrl: 'assets/videos/Interstellar.mp4',
          dicription:
              'Set in a dystopian future where humanity is struggling to survive, the film follows a group of astronauts who travel through a wormhole near Saturn'),
      ModelClassOfData(
          title: 'Memento8',
          posterImage: 'assets/images/memento.png',
          videoUrl: 'assets/videos/Memento.mp4',
          dicription:
              'Synopsis. This is a complex story about Leonard Shelby (Guy Pearce), a man whose ability to make new memories is damaged when he is struck in the head while confronting two people who are attacking his wife (Jorja Fox) at their home in the middle of the night.'),
      ModelClassOfData(
          title: 'Pianist8',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
    ];

    // ! List for Award Winning Films
    List<ModelClassOfData> awardWinningList = [
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
          title: 'Pianist9',
          posterImage: 'assets/images/pianest.png',
          videoUrl: 'assets/videos/Pianist.mp4',
          dicription:
              'The Pianist is a 2002 biographical war drama film produced and directed by Roman Polanski, with a script by Ronald Harwood, and starring Adrien Brody. It is based on the autobiographical book The Pianist (1946), a Holocaust memoir by the Polish-Jewish pianist and composer Władysław Szpilman, a Holocaust survivor.'),
    ];

    return Scaffold(
        body: Material(
      color: Colors.black,
      child: CustomScrollView(
        slivers: [
          // ! SliverApp bar and Search TextFormField
          SliverAppBar(
              pinned: true,
              floating: true,
              elevation: 20,
              automaticallyImplyLeading: false,
              backgroundColor:
                  const Color.fromARGB(255, 36, 35, 35).withOpacity(0.8),
              leading: Image.asset(
                'assets/images/netflix.png',
                fit: BoxFit.cover,
              ),

              // Search TextFormField
              title: SizedBox(
                height: screenHeight * 0.06,
                child: Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.075),
                  child: Hero(
                    tag: 'searchIt',
                    child: Material(
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                      color: Colors.grey.withOpacity(0.8),
                      child: TextFormField(
                        onTap: () => Navigator.pushNamed(
                            context, SearchScreen.activityName),
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
              )),

          // ! for single View
          SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(
                top: clientHeight * 0.02,
                right: screenWidth * 0.1,
                left: screenWidth * 0.1),
            child: SizedBox(
                height: clientHeight * 0.5,
                width: screenWidth * 0.5,
                child: MovieTile(modelClassOfData: singleViewData)),
          )),

          // ! Text for Continue Watching
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.6,
              top: clientHeight * 0.01,
            ),
            sliver: SliverToBoxAdapter(
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.02)),
                    shadowColor: Colors.grey.withOpacity(0.2),
                    backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    elevation: 10,
                    label: Text(
                      'Continue Watching',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ),

          // ! List for Continue Watching
          SliverToBoxAdapter(
              child: SizedBox(
            height: clientHeight * 0.2,
            child: ListView.builder(
              itemCount: continueWatchingList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(clientHeight * 0.02),
              itemBuilder: (context, index) => Row(
                children: [
                  MovieTile(modelClassOfData: continueWatchingList[index]),
                  SizedBox(
                    width: screenWidth * 0.05,
                  )
                ],
              ),
            ),
          )),

          // ! Text for Top 10 Movies in Pakistan
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.5,
              top: clientHeight * 0.01,
              bottom: clientHeight * 0.01,
            ),
            sliver: SliverToBoxAdapter(
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.02)),
                    shadowColor: Colors.grey.withOpacity(0.2),
                    backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    elevation: 10,
                    label: Text(
                      'Top 10 Movies in Pakistan',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ),

          // ! List for top 10 Movies in Pakistan
          SliverToBoxAdapter(
              child: SizedBox(
            height: clientHeight * 0.2,
            child: ListView.builder(
              itemCount: continueWatchingList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(clientHeight * 0.02),
              itemBuilder: (context, index) => Row(
                children: [
                  MovieTile(modelClassOfData: topMoviesList[index]),
                  SizedBox(
                    width: screenWidth * 0.05,
                  )
                ],
              ),
            ),
          )),

          // ! Text for Critically acclaimed Epics
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.5,
              top: clientHeight * 0.01,
              bottom: clientHeight * 0.01,
            ),
            sliver: SliverToBoxAdapter(
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.02)),
                    shadowColor: Colors.grey.withOpacity(0.2),
                    backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    elevation: 10,
                    label: Text(
                      'Critically acclaimed Epics',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ),

          // ! List for Critically acclaimed Epics
          SliverToBoxAdapter(
              child: SizedBox(
            height: clientHeight * 0.2,
            child: ListView.builder(
              itemCount: criticallyAcclaimedList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(clientHeight * 0.02),
              itemBuilder: (context, index) => Row(
                children: [
                  MovieTile(modelClassOfData: criticallyAcclaimedList[index]),
                  SizedBox(
                    width: screenWidth * 0.05,
                  )
                ],
              ),
            ),
          )),

          // ! Text for Imaginative Fantasy Movies
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.48,
              top: clientHeight * 0.01,
              bottom: clientHeight * 0.01,
            ),
            sliver: SliverToBoxAdapter(
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.02)),
                    shadowColor: Colors.grey.withOpacity(0.2),
                    backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    elevation: 10,
                    label: Text(
                      'Imaginative Fantasy Movies',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ),

          // ! List for Imaginative Fantasy Movies
          SliverToBoxAdapter(
              child: SizedBox(
            height: clientHeight * 0.2,
            child: ListView.builder(
              itemCount: imaginativeFantasyList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(clientHeight * 0.02),
              itemBuilder: (context, index) => Row(
                children: [
                  MovieTile(modelClassOfData: imaginativeFantasyList[index]),
                  SizedBox(
                    width: screenWidth * 0.05,
                  )
                ],
              ),
            ),
          )),

          // ! Text for New Releases
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.68,
              top: clientHeight * 0.01,
              bottom: clientHeight * 0.01,
            ),
            sliver: SliverToBoxAdapter(
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.02)),
                    shadowColor: Colors.grey.withOpacity(0.2),
                    backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    elevation: 10,
                    label: Text(
                      'New Releases',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ),

          // ! List for New Releases
          SliverToBoxAdapter(
              child: SizedBox(
            height: clientHeight * 0.2,
            child: ListView.builder(
              itemCount: newReleasesList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(clientHeight * 0.02),
              itemBuilder: (context, index) => Row(
                children: [
                  MovieTile(modelClassOfData: newReleasesList[index]),
                  SizedBox(
                    width: screenWidth * 0.05,
                  )
                ],
              ),
            ),
          )),

          // ! Text for Award Winning Films
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.58,
              top: clientHeight * 0.01,
              bottom: clientHeight * 0.01,
            ),
            sliver: SliverToBoxAdapter(
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.02)),
                    shadowColor: Colors.grey.withOpacity(0.2),
                    backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    elevation: 10,
                    label: Text(
                      'Award Winning Films',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
          ),

          // ! List for Award Winning Films
          SliverToBoxAdapter(
              child: SizedBox(
            height: clientHeight * 0.2,
            child: ListView.builder(
              itemCount: awardWinningList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(clientHeight * 0.02),
              itemBuilder: (context, index) => Row(
                children: [
                  MovieTile(modelClassOfData: awardWinningList[index]),
                  SizedBox(
                    width: screenWidth * 0.05,
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    ));
  }
}
