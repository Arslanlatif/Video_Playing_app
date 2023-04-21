import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.6),
          leading: Image.asset(
            'assets/images/netflix.png',
            fit: BoxFit.cover,
          ),
          title: const Text(
            'Search',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            height: clientHeight,
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.1, right: screenWidth * 0.1),
              child: Center(
                child: TextFormField(
                  cursorColor: Colors.black,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.black,
                    filled: true,
                    suffixIcon: const Icon(Icons.search),
                    hintText: 'Search',

                    // ! All Borders
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(screenWidth * 0.1))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                            Radius.circular(screenWidth * 0.1))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(
                            Radius.circular(screenWidth * 0.1))),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(
                            Radius.circular(screenWidth * 0.1))),
                  ),
                ),
              ),
            )));
  }
}
