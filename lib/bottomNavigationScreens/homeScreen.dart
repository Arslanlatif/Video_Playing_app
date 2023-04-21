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
    final screenWidth = MediaQuery.of(context).size.width;

// ! List of ModelClass

    List<ModelClassOfData> firstList = [
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
// ! List of ModelClass
    List<ModelClassOfData> secondList = [
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

    return Scaffold(
        // backgroundColor: Colors.blueGrey,
        body: Material(
      color: Colors.grey,
      child: CustomScrollView(
        slivers: [
          // ! SliverApp bar
          SliverAppBar(
            pinned: true,
            floating: false,
            // snap: true,
            elevation: 10,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey.withOpacity(0.8),
            leading: Image.asset(
              'assets/images/netflix.png',
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),

          // ! Text for Continue Watching
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.54,
              top: screenHeight * 0.01,
              // bottom: screenHeight * 0.01,
            ),
            sliver: const SliverToBoxAdapter(
                child: Chip(
                    label: Text(
              'Continue Watching',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ))),
          ),

          // ! First Grid View
          SliverPadding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.03, bottom: screenHeight * 0.03),
            sliver: SliverGrid.builder(
              itemCount: firstList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 3),
              itemBuilder: (context, index) {
                return MovieTile(modelClassOfData: firstList[index]);
              },
            ),
          ),

          // ! Text for Top 10 in Pakistan
          SliverPadding(
            padding: EdgeInsets.only(
              right: screenWidth * 0.5,
              top: screenHeight * 0.01,
              bottom: screenHeight * 0.01,
            ),
            sliver: const SliverToBoxAdapter(
                child: Chip(
                    label: Text(
              'Top 10 in Pakistan',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ))),
          ),

          // ! Second Grid View
          SliverPadding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.03, bottom: screenHeight * 0.03),
            sliver: SliverGrid.builder(
              itemCount: firstList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20, mainAxisSpacing: 20, crossAxisCount: 3),
              itemBuilder: (context, index) {
                return MovieTile(modelClassOfData: secondList[index]);
              },
            ),
          )
        ],
      ),
    ));
  }
}
