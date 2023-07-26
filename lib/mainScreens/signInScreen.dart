import 'package:arflix/mainScreens/signUpScreen.dart';
import 'package:arflix/modelClasses_And_Mixin/validatorMixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';

import '../main.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const activityName = '/signInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with FormValidationMixin, SingleTickerProviderStateMixin {
      
  late TextEditingController _emailTEC, _passwordTEC;
  final FocusNode _emailFN = FocusNode();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late AnimationController animationController;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    _passwordTEC = TextEditingController();
    _emailTEC = TextEditingController();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  void dispose() {
    _passwordTEC.dispose();
    animationController.dispose();
    super.dispose();
  }

  bool _obsecure = true;
  void _isVisible() {
    setState(() {
      _obsecure = !_obsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    final screenWidth = size.width;
    final topBarHeight = MediaQuery.of(context).padding.top;
    final clientHeight = screenHeight - kToolbarHeight - topBarHeight;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(systemNavigationBarColor: Colors.black),
      child: Scaffold(
        appBar: AppBar(
          // elevation: 10,
          leadingWidth: screenWidth * 0.3,
          toolbarHeight: clientHeight * 0.1,
          backgroundColor: Colors.black,
          leading: Image.asset(
            'assets/images/netflixx.png',
            fit: BoxFit.contain,
          ),
        ),
        body: Container(
          height: clientHeight,
          color: Colors.black,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ! Email or Number TextFormField
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.23,
                          left: screenWidth * 0.07,
                          right: screenWidth * 0.07),
                      child: FadeTransition(
                        opacity: fadeAnimation,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          focusNode: _emailFN,
                          controller: _emailTEC,
                          // autofocus: true,
                          cursorColor: Colors.black,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: emailValidation,
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            focusColor: Colors.grey,
                            prefixIconColor: Colors.black,
                            prefixIcon: const Icon(Icons.email),
                            filled: true,
                            label: const Text(
                              'Email or phone number',
                              style: TextStyle(color: Colors.white),
                            ),
                            labelStyle: TextStyle(height: clientHeight * 0.006),

                            // ! All Borders
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                          ),
                        ),
                      ),
                    ),

                    // ! Password TextFormField
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.02,
                          left: screenWidth * 0.07,
                          right: screenWidth * 0.07),
                      child: FadeTransition(
                        opacity: fadeAnimation,
                        child: TextFormField(
                          controller: _passwordTEC,
                          obscureText: _obsecure,
                          cursorColor: Colors.black,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: paswodValidation,
                          decoration: InputDecoration(
                            prefixIconColor: Colors.black,
                            prefixIcon: const Icon(Icons.lock),
                            fillColor: Colors.grey,
                            filled: true,

                            //! Password Hide or Unhide
                            suffixIcon: IconButton(
                                color: Colors.black,
                                onPressed: () => _isVisible(),
                                icon: Icon(_obsecure
                                    ? Icons.visibility_off
                                    : Icons.visibility)),

                            label: const Text(
                              'Password',
                              style: TextStyle(color: Colors.white),
                            ),
                            labelStyle: TextStyle(height: clientHeight * 0.006),

                            // ! All Borders
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                          ),
                        ),
                      ),
                    ),

                    // ! Sign In Button
                    Padding(
                        padding: EdgeInsets.only(
                            top: clientHeight * 0.05,
                            left: screenWidth * 0.07,
                            right: screenWidth * 0.07),
                        child: Container(
                          height: clientHeight * 0.1,
                          color: Colors.black,
                          child: NeoPopTiltedButton(
                              onTapUp: () {},
                              onTapDown: () {
                                if (formKey.currentState!.validate()) {
                                  _emailTEC.clear();
                                  _passwordTEC.clear();
                                  _emailFN.unfocus();

                                  Navigator.pushNamed(
                                      context, MyHomePage.activityName);
                                } else {
                                  const ScaffoldMessenger(
                                      child: SnackBar(
                                          content: Text('Unsuccesful')));
                                }
                              },
                              isFloating: true,
                              decoration: NeoPopTiltedButtonDecoration(
                                  showShimmer: true,
                                  plunkColor:
                                      const Color.fromARGB(255, 114, 68, 68),
                                  shadowColor: Colors.grey.withOpacity(0.3),
                                  color: const Color.fromARGB(255, 255, 17, 0)),
                              child: Center(
                                child: Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: clientHeight * 0.03),
                                ),
                              )),
                        )),

                    // ! Simple Text
                    Padding(
                      padding: EdgeInsets.only(top: clientHeight * 0.05),
                      child: const Text(
                        'Need help?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),

                    // ! Text for Sign Up Screen
                    InkWell(
                      onTap: () => Navigator.pushNamed(
                          context, SignUpScreen.activityName),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: clientHeight * 0.05,
                        ),
                        child: const Text('New to Netflix? Sign up now.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),

                    // ! Simple Text
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.07,
                          right: screenWidth * 0.01,
                          top: clientHeight * 0.05),
                      child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                fontSize: clientHeight * 0.017,
                                color: Colors.grey,
                              ),
                              children: const [
                            TextSpan(
                                text:
                                    'Sign in protected by Google reCAPTCHA to ensure You are not a bot.'),
                            TextSpan(
                                text: 'Learn more.',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
/**
 ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              fixedSize: Size.fromHeight(clientHeight * 0.1),
                              backgroundColor: Colors.black,
                              side: const BorderSide(
                                color: Colors.white,
                              )),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Succesful")));
                              _emailTEC.clear();
                              _passwordTEC.clear();
                              _emailFN.unfocus();
                              Navigator.pushNamed(
                                  context, MyHomePage.activityName);
                            } else {
                              const ScaffoldMessenger(
                                  child:
                                      SnackBar(content: Text('Unsuccesful')));
                            }
                          },
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: clientHeight * 0.03),
                            ),
                          )),
 */