import 'package:auto_route/auto_route.dart';
import 'package:event/application/loginpagemodel.dart';
import 'package:event/utils/utils.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginPageViewModel>.reactive(
      viewModelBuilder: () => LoginPageViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: [
           Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient( 
                  colors: [
                    Color(0xFF984228), 
                    Color(0xFFB64427),
                    Color(0xFFEA7956),
                  ],
                
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(height: 180.h),
                  Image.asset('images/logo.png'),
                  SizedBox(height: 95.h),
                  Text('Welcome Back',
                      style: primaryappTextStyle(16.sp, FontWeight.w500)),
                  SizedBox(height: 22.3.sp),
                  textbox("Email Address", const Icon(IconsaxOutline.sms,color: white,), width: 332.45.w, height: 47.4.h, radius: 10.r,),
                  SizedBox(height: 16.6.sp),
                  textbox(
                    "Password",
                    const Icon(IconsaxOutline.bag_cross,color: white,),
                    obscureText: true,
                    suffixIcon: const Icon(
                      Icons.visibility_off,
                      color: white,
                    ), width: 332.45.w, height: 47.4.h, radius: 10.r,),
                  SizedBox(height: 38.3.h),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('Forgot Password?',
                              style: primaryappTextStyle(
                                  16, FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35.h),
                  GestureDetector(
                    onTap: () {
                      model.onLoginTap();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: black),
                      height: 50.h,
                      width: 327.w,
                      child: Center(
                          child: Text(
                        'Login',
                        style: secondaryappTextStyle(20.sp, FontWeight.w700),
                      )),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    '— Or Login with —',
                    style: TextStyle(color: white, fontSize: 14.sp),
                  ),
               SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 64.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: white,
                            width: 0.3,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: IconButton(
                          icon: Image.asset(
                              'images/Google.png'), // Replace with your asset
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 24.w),
                      Container(
                        height: 64.h,
                        width: 64.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: white,
                            width: 0.3.w,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: IconButton(
                          icon: Image.asset(
                              'images/fb.png'), // Replace with your asset
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  TextButton(
                    onPressed: () {
                      model.onCreateAccountTap();
                    },
                    child:  Text(
                      "Don't have an account? Sign Up",
                      style: GoogleFonts.montserrat(color: fyellow,fontSize: 14.sp,fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 422.h,
              right: 1.w,
              child: Image.asset('images/card1.png'),
            ),
            Positioned(
              top: 720.h,
              right: 320.w,
              child: Image.asset('images/card2.png'),
            ),
            Positioned(
              top: 254.h,
              right: 380.w,
              child: Image.asset('images/card3.png'),
            ),
          ],
        ),
      ),
    );
  }
}
