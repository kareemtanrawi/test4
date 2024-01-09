import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test3/views/screens/auth/Widget/button_widget.dart';
import 'package:test3/views/screens/home_screen/home_page.dart';
// import 'package:test3/views/screens/auth/Widget/logo_button_widget.dart';
// import 'package:shop_mart/screens/auth/signup_screen.dart';
// import 'package:shop_mart/screens/auth/widget/button_widget.dart';
// import 'package:shop_mart/screens/auth/widget/logo_button_widget.dart';

// import '../../res/assets_res.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back!',
                style: GoogleFonts.aBeeZee(
                  color: const Color(0xFF343434),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Login to your account',
                style: GoogleFonts.aBeeZee(
                  color: const Color(0xFF7A7A7A),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                'Email or Mobil number',
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 343,
                height: 51,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Password',
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 343,
                height: 51,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '********',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        size: 18,
                      ),
                      hintStyle: GoogleFonts.aBeeZee(),
                      border: const OutlineInputBorder()),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget password',
                    style: GoogleFonts.aBeeZee(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  title: 'Login'),
              // TextButton(
              //   onPressed: () {},
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: Text(
              //       'Continue as a Guest',
              //       style: GoogleFonts.aBeeZee(
              //         color: const Color(0xFF1495B2),
              //         fontSize: 16,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 16,
              ),
              // Center(
              //   child: Text(
              //     'OR Login With',
              //     style: GoogleFonts.aBeeZee(
              //       color: Colors.black,
              //       fontSize: 14,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 24,
              ),
              // LogoButtonWidget(
              //   image: AssetsRes.facebookLogo,
              //   text: 'Continue with Facebook',
              //   ontap: () {},
              // ),
              const SizedBox(
                height: 24,
              ),
              // LogoButtonWidget(
              //   // image: AssetsRes.googleLogo,
              //   text: 'Continue with Google',
              //   ontap: () {},
              // ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // TextButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => const SignUp(),
                  //       ),
                  //     );
                  //   },
                  //   child: Text(
                  //     'Sign Up',
                  //     style: GoogleFonts.aBeeZee(
                  //       color: Color(0xFF1495B2),
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.w400,
                  //       decoration: TextDecoration.underline,
                  //     ),
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
