import 'package:arflix/mainScreens/signInScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/neopop.dart';
import '../main.dart';
import '../modelClasses_And_Mixin/validatorMixin.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const activityName = '/signUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with FormValidationMixin, SingleTickerProviderStateMixin {
  bool isChecked = false;

  late TextEditingController _emailTEC, _passwordTEC;
  final FocusNode _emailFN = FocusNode();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late AnimationController animationController;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    super.initState();
    _passwordTEC = TextEditingController();
    _emailTEC = TextEditingController();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    offsetAnimation = Tween(begin: const Offset(-1, 0), end: Offset.zero)
        .animate(animationController)
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
      value: const SystemUiOverlayStyle(systemNavigationBarColor: Colors.white),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.1,
          backgroundColor: Colors.white,
          leadingWidth: screenWidth * 0.3,
          elevation: 0,
          leading: Image.asset(
            'assets/images/netflixx.png',
            fit: BoxFit.contain,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                  right: screenWidth * 0.04, top: screenHeight * 0.02),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, SignInScreen.activityName),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * 0.02,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          height: clientHeight,
          color: Colors.white,
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //  Simple Text
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.03,
                          left: screenWidth * 0.07,
                          right: screenWidth * 0.07),
                      child: Text(
                        'Ready to experience unlimited TV showes and movies?',
                        style: TextStyle(
                            fontSize: clientHeight * 0.036,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    //  Simple Text
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.03,
                          left: screenWidth * 0.07,
                          right: screenWidth * 0.07),
                      child: Text(
                        'Creat an account and we will send you an email with everything you need to know about Netflix.',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 32, 32, 32),
                          fontSize: clientHeight * 0.03,
                        ),
                      ),
                    ),

                    // ! Email or Number TextFormField
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.1,
                          left: screenWidth * 0.07,
                          right: screenWidth * 0.07),
                      child: SlideTransition(
                        position: offsetAnimation,
                        child: TextFormField(
                          focusNode: _emailFN,
                          controller: _emailTEC,
                          keyboardType: TextInputType.emailAddress,
                          // autofocus: true,
                          cursorColor: Colors.black,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: emailValidation,
                          decoration: InputDecoration(
                            fillColor: Colors.white10,
                            prefixIconColor: Colors.grey,
                            prefixIcon: const Icon(Icons.email),
                            filled: true,
                            label: Text(
                              'Email',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            labelStyle: TextStyle(height: clientHeight * 0.006),

                            // ! All Borders
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 127, 189, 129),
                                ),
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
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
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
                      child: SlideTransition(
                        position:
                            Tween(begin: const Offset(1, 0), end: Offset.zero)
                                .animate(animationController),
                        child: TextFormField(
                          controller: _passwordTEC,
                          obscureText: _obsecure,
                          cursorColor: Colors.black,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: paswodValidation,
                          decoration: InputDecoration(
                            prefixIconColor: Colors.grey,
                            prefixIcon: const Icon(Icons.lock),
                            fillColor: Colors.white,
                            filled: true,

                            //! Password Hide or Unhide
                            suffixIcon: IconButton(
                                color: Colors.black,
                                onPressed: () => _isVisible(),
                                icon: Icon(_obsecure
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            label: Text(
                              'Password',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            labelStyle: TextStyle(height: clientHeight * 0.006),

                            // ! All borders
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blue.shade700,
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.004))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.01))),
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

                    // !  CheckBox
                    Padding(
                      padding: EdgeInsets.only(
                          top: clientHeight * 0.02,
                          left: screenWidth * 0.07,
                          right: screenWidth * 0.07),
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.03),
                          child: Text(
                              style: TextStyle(fontSize: clientHeight * 0.022),
                              'Please do not email me Netflix Special offers'),
                        ),
                        value: isChecked,
                        checkColor: Colors.white,
                        onChanged: (value) => setState(() {
                          isChecked = value!;
                        }),
                      ),
                    ),

                    // ! Sign Up/CONTINUE Button
                    Padding(
                        padding: EdgeInsets.only(
                            top: clientHeight * 0.05,
                            left: screenWidth * 0.07,
                            right: screenWidth * 0.07),
                        child: Container(
                          height: clientHeight * 0.1,
                          color: Colors.white,
                          child: NeoPopTiltedButton(
                              onTapUp: () {},
                              onTapDown: () {
                                if (formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("Signing in")));
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
                              decoration: const NeoPopTiltedButtonDecoration(
                                  showShimmer: true,
                                  plunkColor: Color.fromARGB(255, 114, 68, 68),
                                  shadowColor: Colors.grey,
                                  color: Color.fromARGB(255, 255, 17, 0)),
                              child: Center(
                                child: Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: clientHeight * 0.03),
                                ),
                              )),
                        )),

                   
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
/**
                    // child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //         fixedSize: Size.fromHeight(clientHeight * 0.08),
                    //         backgroundColor:
                    //             const Color.fromARGB(255, 255, 17, 0),
                    //         side: const BorderSide(
                    //           color: Colors.white,
                    //         )),
                    //     onPressed: () {
                    // if (formKey.currentState!.validate()) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //       const SnackBar(content: Text("Signing in")));
                    //   _emailTEC.clear();
                    //   _passwordTEC.clear();
                    //   _emailFN.unfocus();

                    //   Navigator.pushNamed(
                    //       context, MyHomePage.activityName);
                    // } else {
                    //   const ScaffoldMessenger(
                    //       child:
                    //           SnackBar(content: Text('Unsuccesful')));
                    // }
                    //     },
                    //     child: Center(
                    //       child: Text(
                    //         'CONTINUE',
                    //         style: TextStyle(
                    //             color: Colors.white,
                    //             fontSize: clientHeight * 0.03),
                    //       ),
                    //     )),
 */