import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showpassword = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final isSmallScreen = screenHeight < 700;

    final double formPadding = isSmallScreen ? 16 : 24;
    final double headlineSize = isSmallScreen ? 20 : 24;
    final double subtitleGap = isSmallScreen ? 6 : 8;
    final double headerGap = isSmallScreen ? 16 : 24;
    final double fieldGap = isSmallScreen ? 4 : 5;
    final double buttonPadding = isSmallScreen ? 12 : 16;

    final Alignment containerAlignment = isTablet
        ? const Alignment(0, 0.4)
        : const Alignment(0, 0.9);

    final double maxContainerHeight = isTablet
        ? screenHeight * 0.75
        : screenHeight * 0.9;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
          ),
          SafeArea(
            child: Align(
              alignment: containerAlignment,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: maxContainerHeight),
                child: FractionallySizedBox(
                  widthFactor: 0.85,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withValues(
                        alpha: 0.99,
                      ), //future maron, change this to just white in the future to avoid the transparent overhalll when the keyboard pops up.
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(formPadding),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'WELCOME BACK',
                              style: TextStyle(
                                fontSize: headlineSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: subtitleGap),
                            Text(
                              'Sign in to access your Bantu account.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(height: headerGap),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Email or Phone',
                                floatingLabelStyle: TextStyle(
                                  color: Colors.green,
                                ),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),

                            SizedBox(height: fieldGap),
                            TextField(
                              obscureText: !showpassword,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                // labelStyle: TextStyle(color: Colors.white54),
                                floatingLabelStyle: TextStyle(
                                  color: Colors.green,
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.green,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    showpassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      showpassword = !showpassword;
                                    });
                                  },
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(height: 0.01),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  print("Pressed!");
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            ), //closes forgot password
                            SizedBox(height: 0.01),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  padding: EdgeInsets.symmetric(
                                    vertical: buttonPadding,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ), //login buttton closing tag
                            SizedBox(height: fieldGap),
                            Text('────────  or  ────────'),
                            SizedBox(height: fieldGap),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/google.png',
                                  height: 20,
                                  width: 20,
                                ),
                                label: Text(
                                  'Sign in with Google',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                    vertical: buttonPadding,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ), //sign in with google closing tag
                            SizedBox(height: fieldGap),
                            Text.rich(
                              TextSpan(
                                text: "Don't have an account? ",
                                style: TextStyle(color: Colors.black87),
                                children: [
                                  TextSpan(
                                    text: 'Create account',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUp(),
                                          ),
                                        );
                                      },
                                  ),
                                ],
                              ),
                            ), //rich text closing tag
                          ], // closes Column's children
                        ), // closes Column
                      ), // closes Padding
                    ), // closes SingleChildScrollView
                  ), // closes Container
                ), // closes FractionallySizedBox
              ), // closes ConstrainedBox
            ), // closes Align
          ), // closes SafeArea
        ], // closes Stack's children
      ), // closes Stack
    ); // closes Scaffold, ends return statement
  } // closes build method
} // closes _LoginPageState class
