import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPasscode = false;
  bool showConfirmPasscode = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // background image sits outside the Scaffold so it's never
        // affected by keyboard resizing
        Positioned.fill(
          child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // back button, floats over the raw background image
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.3),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                  ), // closes back button Padding

                  Center(
                    child: ConstrainedBox(
                      // caps width on tablets so the form doesn't stretch edge to edge
                      constraints: const BoxConstraints(maxWidth: 480),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'CREATE ACCOUNT',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Fill in your details to get started with Bantu Money.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                                const SizedBox(height: 24),

                                // first + last name side by side
                                Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: 'First Name',
                                          floatingLabelStyle: const TextStyle(
                                            color: Colors.green,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.person_outline,
                                            color: Colors.green,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Last Name',
                                          floatingLabelStyle: const TextStyle(
                                            color: Colors.green,
                                          ),
                                          prefixIcon: const Icon(
                                            Icons.person_outline,
                                            color: Colors.green,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ), // closes name Row
                                const SizedBox(height: 16),

                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Middle Name (Optional)',
                                    floatingLabelStyle: const TextStyle(
                                      color: Colors.green,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.person_outline,
                                      color: Colors.green,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),

                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'NRC Number',
                                    hintText: 'e.g. 123456/78/1',
                                    floatingLabelStyle: const TextStyle(
                                      color: Colors.green,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.badge_outlined,
                                      color: Colors.green,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),

                                TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    labelText: 'Mobile Number',
                                    hintText: 'e.g. 0961234567',
                                    floatingLabelStyle: const TextStyle(
                                      color: Colors.green,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.phone_android,
                                      color: Colors.green,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),

                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Business Name (Optional)',
                                    floatingLabelStyle: const TextStyle(
                                      color: Colors.green,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.storefront_outlined,
                                      color: Colors.green,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),

                                TextField(
                                  obscureText: !showPasscode,
                                  keyboardType: TextInputType.number,
                                  maxLength: 6,
                                  decoration: InputDecoration(
                                    counterText:
                                        '', // hides the little 0/6 counter
                                    labelText: 'Passcode',
                                    floatingLabelStyle: const TextStyle(
                                      color: Colors.green,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.lock_outline,
                                      color: Colors.green,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        showPasscode
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          showPasscode = !showPasscode;
                                        });
                                      },
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),

                                TextField(
                                  obscureText: !showConfirmPasscode,
                                  keyboardType: TextInputType.number,
                                  maxLength: 6,
                                  decoration: InputDecoration(
                                    counterText: '',
                                    labelText: 'Confirm Passcode',
                                    floatingLabelStyle: const TextStyle(
                                      color: Colors.green,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.lock_outline,
                                      color: Colors.green,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        showConfirmPasscode
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          showConfirmPasscode =
                                              !showConfirmPasscode;
                                        });
                                      },
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 24),

                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: const Text(
                                      'Create Account',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), // closes Create Account button
                                const SizedBox(height: 16),

                                Center(
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Already have an account? ',
                                      style: const TextStyle(
                                        color: Colors.black87,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Log in',
                                          style: const TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pop(context);
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ), // closes "already have an account" text
                              ], // closes card content Column's children
                            ), // closes card content Column
                          ), // closes card inner Padding
                        ), // closes white Container (card)
                      ), // closes horizontal Padding
                    ), // closes ConstrainedBox
                  ), // closes Center

                  const SizedBox(height: 24), // bottom breathing room
                ], // closes page Column's children
              ), // closes page Column
            ), // closes SingleChildScrollView
          ), // closes SafeArea
        ), // closes Scaffold
      ], // closes Stack's children
    ); // closes Stack, ends return statement
  } // closes build method
} // closes _SignUpState class
