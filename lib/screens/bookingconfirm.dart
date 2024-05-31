import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:event/application/basemodel.dart';
import 'package:event/utils/utils.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../application/buyticketpage1viewmodel.dart';
import '../model/event.dart';

@RoutePage()
class BookingConfirmationScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  BookingConfirmationScreenPage({super.key});
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
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 25.w),
                                  child: Text(
                                    'Booking Confirmation',
                                    style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 28.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var event = eventlist[1];

                                    return eventCard(
                                      context: context,
                                      imagePath: event.imagePath!,
                                      passesText: event.passesText!,
                                      timeLeftText: event.timeLeftText!,
                                      categoryText: event.categoryText!,
                                      eventName: event.eventName!,
                                      eventTime: event.eventTime!,
                                      eventLocation: event.eventLocation!,
                                      ticketPrice: event.ticketPrice!,
                                      onTap: () {},
                                      onheartTap: () {
                                        // model.addToFavouriteList(event);
                                      },
                                    );
                                  },
                                ),
                              ),
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
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                  'Headcount',
                                                  style: primaryappTextStyle(
                                                      18.sp, FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                            space(25.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                GestureDetector(
                                                  onTap: model.decrement,
                                                  child: Container(
                                                    width: 36.99,
                                                    height: 37,
                                                    color:
                                                        const Color(0xffAF796A),
                                                    child: const Center(
                                                        child: Icon(
                                                            Icons.remove,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Text('${model.counter}',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: white)),
                                                const SizedBox(width: 10),
                                                GestureDetector(
                                                  onTap: model.increment,
                                                  child: Container(
                                                    width: 36.99,
                                                    height: 37,
                                                    color:
                                                        const Color(0xffAF796A),
                                                    child: const Center(
                                                        child: Icon(Icons.add,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              space(18.h),
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
                                                  'Use promo code',
                                                  style: primaryappTextStyle(
                                                      18.sp, FontWeight.w600),
                                                ),
                                              ),
                                              space(10.h),
                                              Container(
                                                width: 305.w,
                                                height: 49.h,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xFFAF796A),
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Enter promo code',
                                                        hintStyle:
                                                            primaryappTextStyle(
                                                                11),
                                                        suffix: TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            'Apply',
                                                            style:
                                                                primaryappTextStyle(
                                                                    11),
                                                          ),
                                                        ),
                                                        border:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(16),
                                                          borderSide:
                                                              BorderSide.none,
                                                        ),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 10),
                                                        filled: true,
                                                        fillColor:
                                                            Colors.transparent,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              space(18.h),
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
                              space(18.h),
                              Center(
                                child: GestureDetector(
                                        onTap: () {
                                        
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15.r),
                                              color: black),
                                          height: 50.h,
                                          width: 327.w,
                                          child: Center(
                                              child: Text(
                                            'Confirm Purchase',
                                            style: secondaryappTextStyle(
                                                20.sp, FontWeight.w700),
                                          )),
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
