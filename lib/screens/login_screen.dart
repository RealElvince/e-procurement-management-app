import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tender_app/components/visible_password.dart';
import 'package:tender_app/screens/home_screen.dart';
import 'package:tender_app/screens/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                SizedBox(
                  height: size.height * 0.08,
                ),
                Text(
                  'Sign In',
                  style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
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
                // Email section
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
                      suffix: const PasswordVisibleIcon(),
                      label: Text(
                        'Password',
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(13.0)),
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      margin: const EdgeInsets.all(10.0),
                      height: 50.0,
                      alignment: Alignment.center,
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.aBeeZee(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Not a member ?'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: Text(
                            'Sign Up.',
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
