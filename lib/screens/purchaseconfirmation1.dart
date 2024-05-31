import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:event/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../application/basemodel.dart';

@RoutePage()
class PurchaseConfirmation1ScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

   PurchaseConfirmation1ScreenPage({super.key});
  @override
  Widget build(BuildContext context) {
    // Define the gradient for reuse
    const gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF984228),
        Color(0xFFB64427),
        Color(0x00EA7956),
      ],
      stops: [0.0, 1.0, 2.0],
    );

    return ViewModelBuilder<BaseModel>.reactive(
        viewModelBuilder: () => BaseModel(),
        builder: (context, model, child) => Scaffold(
            key: _scaffoldKey,
            drawer: buildDrawer(context),
            body: Container(
                decoration: const BoxDecoration(
                  gradient: gradient,
                ),
                child: Container(
            decoration: const BoxDecoration(
              gradient: gradient,
            ),
            child: Column(children: [
              appBar(_scaffoldKey),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Text(
                          'Purchase Confirmation',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 28.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      space(14.sp),
                      // Padding(
                      //     padding: EdgeInsets.symmetric(horizontal: 25.w),
                      //     child: model.eventCard(
                      //         context: context,
                      //         imagePath: 'images/event5.png',
                      //         passesText: '200 passes',
                      //         timeLeftText: '2 days to go',
                      //         categoryText: 'Technology',
                      //         eventName: 'GDG conference',
                      //         eventTime: 'Fri Dec 22    10:00 - 12:00',
                      //         eventLocation: 'Land mark centre',
                      //         ticketPrice: 'Buy ticket starting at \$200',
                      //         onTap: () {})),
  Align(
                                child: Container(
                                  width: 343,
                                  height: 153,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 5,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 19, vertical: 15),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Attendee identity',
                                                  style: primaryappTextStyle(
                                                      18.sp, FontWeight.w600),
                                                ),
                                              ),
                                              space(16.h),
                                              Row(
                                                children: [
                                                  SelectableCircle(
                                                    size: 20.0,
                                                    isSelected: model
                                                            .attendeeselectedCircleIndex ==
                                                        0,
                                                    onSelected: () => model
                                                        .attendeeselectCircle(
                                                            0),
                                                  ),
                                                  SizedBox(
                                                    width: 26.w,
                                                  ),
                                                  Text(
                                                    'Use existing identity',
                                                    style: primaryappTextStyle(
                                                        18.sp, FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              space(20.h),
                                              Row(
                                                children: [
                                                  SelectableCircle(
                                                    size: 20.0,
                                                    isSelected: model
                                                            .attendeeselectedCircleIndex ==
                                                        1,
                                                    onSelected: () => model
                                                        .attendeeselectCircle(
                                                            1),
                                                  ),
                                                  SizedBox(
                                                    width: 26.w,
                                                  ),
                                                  Text(
                                                    'Use custom identity',
                                                    style: primaryappTextStyle(
                                                        18.sp, FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      space(18.h),
                       Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: 153.h,
                              width: 343.w,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/cardb.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 15),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Number of ticket',
                                        style: primaryappTextStyle(
                                            18.sp, FontWeight.w600),
                                      ),
                                    ),
                                   
                              
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ),
                      space(32.h),
                       Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Container(
                              height: 153.h,
                              width: 343.w,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/cardb.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 15),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Use promo code',
                                        style: primaryappTextStyle(
                                            18.sp, FontWeight.w600),
                                      ),
                                    ),
                                   
                              
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ),
                      space(32.h),
                       Align(
                                child: Container(
                                  width: 343,
                                  height: 153,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 5,
                                        blurRadius: 10,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 19, vertical: 15),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Payment type',
                                                  style: primaryappTextStyle(
                                                      18.sp, FontWeight.w600),
                                                ),
                                              ),
                                              space(16.h),
                                              Row(
                                                children: [
                                                  SelectableCircle(
                                                    size: 20.0,
                                                    isSelected: model
                                                            .attendeeselectedCircleIndex ==
                                                        0,
                                                    onSelected: () => model
                                                        .attendeeselectCircle(
                                                            0),
                                                  ),
                                                  SizedBox(
                                                    width: 26.w,
                                                  ),
                                                  Text(
                                                    'Wallet',
                                                    style: primaryappTextStyle(
                                                        18.sp, FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              space(20.h),
                                              Row(
                                                children: [
                                                  SelectableCircle(
                                                    size: 20.0,
                                                    isSelected: model
                                                            .attendeeselectedCircleIndex ==
                                                        1,
                                                    onSelected: () => model
                                                        .attendeeselectCircle(
                                                            1),
                                                  ),
                                                  SizedBox(
                                                    width: 26.w,
                                                  ),
                                                  Text(
                                                    'Cash',
                                                    style: primaryappTextStyle(
                                                        18.sp, FontWeight.w400),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                     
                      space(30.h)
                    ],
                  ),
                ),
              ),
            ])))));
  }
}
