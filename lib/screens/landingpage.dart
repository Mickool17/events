import 'package:auto_route/auto_route.dart';
import 'package:event/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../application/landingpagemodel.dart';

@RoutePage()
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  Widget _buildSectionTitle(String text) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: Text(text, style: primaryappTextStyle(28.sp)),
        ),
      ],
    );
  }

  Widget _buildInfoRow1(String title, String content) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Row(
        children: [
          Text(title, style: primaryappTextStyle(10.sp)),
          const Spacer(),
          Text(content, style: primaryappTextStyle(10.sp)),
        ],
      ),
    );
  }

  Widget _buildInfoRow2(String title, String content) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Row(
        children: [
          Text(title, style: primaryappTextStyle(14.sp)),
          const Spacer(),
          _buildButton2(content)
        ],
      ),
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 58.h,
        width: 170.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          color: Colors.black,
        ),
        child: Center(
            child: Text(text,
                style: secondaryappTextStyle(14.sp, FontWeight.w600))),
      ),
    );
  }

  Widget _buildButton2(String text) {
    return Container(
      height: 28.h,
      width: 67.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
        color: Colors.black,
      ),
      child: Center(
          child:
              Text(text, style: secondaryappTextStyle(14.sp, FontWeight.w600))),
    );
  }

  @override
   Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return ViewModelBuilder<LandingPageViewModel>.reactive(
      viewModelBuilder: () => LandingPageViewModel(),
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView( 
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenHeight),
            child: IntrinsicHeight( //distrubuted space in column
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/image.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SizedBox(height: screenHeight * 0.1), 
                      Center(child: Image.asset('images/logo.png')),
                      SizedBox(height: screenHeight * 0.3), 
                      _buildSectionTitle("Explore Events"),
                      SizedBox(height: screenHeight * 0.05), 
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: line,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 21.w),
                        child: line,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        child: _buildInfoRow1("Your location", "Events today"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: _buildInfoRow2("Lagos, NG", "1086"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: line,
                      ),
                      space(52.h),
                      _buildButton(
                          "Create an account", model.onCreateAccountTap),
                      space(12.h),
                      _buildButton("Login to account", model.onLoginTap),
                      space(77.h),
                      Expanded(child: Container()),
                    ],
                  )
                ],
              ),
         ))) ));
  }
}
