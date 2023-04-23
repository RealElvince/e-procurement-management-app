import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tender_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  'Sign Up',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),

                SizedBox(height: size.height * 0.03),
                // Name section
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    onChanged: (value) => {},
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      label: Text(
                        'Name',
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                // Email section
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    onChanged: (value) => {},
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text(
                        'Email',
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                // Password section
                SizedBox(height: size.height * 0.03),

                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    obscuringCharacter: "*",
                    obscureText: true,
                    onChanged: (value) => {},
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      helperMaxLines: 10,
                      helperText: 'Password must container special character.',
                      helperStyle: GoogleFonts.aBeeZee(
                          color: Colors.red, fontSize: 10.0),
                      label: Text(
                        'Password',
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                // Confirm Password
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    obscuringCharacter: "*",
                    obscureText: true,
                    onChanged: (value) => {},
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      helperMaxLines: 10,
                      helperText: 'Password must container special character.',
                      helperStyle: GoogleFonts.aBeeZee(
                          color: Colors.red, fontSize: 10.0),
                      label: Text(
                        'Confirm Password',
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                //Sign button

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(13.0)),
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    margin: const EdgeInsets.all(10.0),
                    height: 50.0,
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.aBeeZee(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already Have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            'Sign In.',
                            style: GoogleFonts.aBeeZee(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
