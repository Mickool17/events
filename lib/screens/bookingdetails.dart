import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:event/utils/utils.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/event.dart';
import '../routes/app_router.dart';

@RoutePage()
class BookingDetailsScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  BookingDetailsScreenPage ({super.key});
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

    return Scaffold(
        key: _scaffoldKey,
      // drawer: buildDrawer(context),
        body: Container(
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
                          padding: EdgeInsets.symmetric(horizontal: 25.w),
                          child: Text(
                            'Booking details',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  
             Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 1, 
    itemBuilder: (BuildContext context, int index) {

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
        onTap: () {
  appRouter.push(BookingConfirmationScreenRoute());
         
        },
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
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 29, left: 19),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Description',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                space(16.h),
                  
                  Text(
                    'This is a cozy hotel 1km away from \nSantiago Bernabeu and suitable for\nmatchday goers.',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
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
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 29, left: 19),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Utilities',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 19),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Parking ',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 10, left: 19),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Wi-Fi',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
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
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 29, left: 19),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Lister details',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 19),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Ademola Lookman',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 10, left: 19),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '+234 803 735 3534',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
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
                     
                   space(30.h),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
