import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        width: 200.w,
        height: 100.h,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.13),
                  ),
                  color: Colors.white.withOpacity(0.15),
                ),
              ),
            ),
            Center(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Single color background
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45.h),
            Center(
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                    fontSize: 30.sp,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0.h),
              child: Container(
                width: 170.w,
                height: 170.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white, // Single color background
              child: Center(
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(30.r),
                  child: Container(
                    height: 270.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Colors.white, // Single color background
                    ),
                    child: LoginScreen(
                      child: Flexible(
                        child: AuthForm(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0.h),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                color: const Color.fromARGB(255, 126, 190, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(10.r, 20.r),
                  ),
                ),
                height: 40.h,
                minWidth: 300.w,
                elevation: 10,
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthForm extends StatelessWidget {
  @override
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Text(
          "Welcome Back",
          textAlign: TextAlign.center,
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(14.w),
          child: Material(
            elevation: 2,
            shadowColor: Colors.blue,
            borderRadius: BorderRadius.circular(15.r),
            child: TextFormField(
              controller: _email,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'E-mail',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15.r)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  filled: true),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          child: Material(
            elevation: 2,
            shadowColor: Colors.blue,
            borderRadius: BorderRadius.circular(15.r),
            child: TextFormField(
              controller: _password,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) => value != null && value.length < 6
                  ? 'Enter Min 6+ characters'
                  : null,
              obscureText: true,
              decoration: InputDecoration(
                icon: const Icon(Icons.lock),
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15.r)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Divider(
            thickness: 2,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Container(
            width: 65.w,
            height: 45.h,
            child: MaterialButton(
              onPressed: () {
                // Your Google Sign Up onPressed
              },
              color: const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0.r),
              ),
              elevation: 20,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: SizedBox(
                    height: 20.h,
                    child: Image.asset(
                      'assets/images/google.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
