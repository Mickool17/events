import 'package:auto_route/auto_route.dart';
import 'package:event/application/eventdetailsviewmodel.dart';
import 'package:event/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../model/event.dart';


@RoutePage()
class EventDetailsScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  EventDetailsScreenPage({super.key});
  @override
  Widget build(BuildContext context) {
    
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

    return ViewModelBuilder<EventDetailsViewModel>.reactive(
      viewModelBuilder: () =>EventDetailsViewModel(),
      builder: (context, model, child) => Scaffold(
          key: _scaffoldKey,
          drawer: buildDrawer(context),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Text(
                          'Event details',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 28.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      space(14.sp),
                    Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: ListView.builder(
    physics: NeverScrollableScrollPhysics(),
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
 
          model.navigateToTicketScreen();
        },
        onheartTap: () {
          model.addToFavouriteList(event);
        },
      );
    },
  ),
),


                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: SizedBox(
                          height: 153.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Container(
                                  height: 153.h,
                                  width: 343.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/cardb.png'),
                                      fit: BoxFit
                                          .cover, 
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Description',
                                            style: primaryappTextStyle(
                                                18.sp, FontWeight.w600),
                                          ),
                                        ),
                                        Text(
                                          'This event is scheduled for a techies in Nigeria to discuss current issues facing the tech ecosystem.',
                                          style: primaryappTextStyle(
                                              16.sp, FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      space(32.h),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 25.w),
                        child: SizedBox(
                          height: 153.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Container(
                                  height: 153.h,
                                  width: 343.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/cardb.png'),
                                      fit: BoxFit
                                          .cover, 
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Organizer',
                                            style: primaryappTextStyle(
                                                18.sp, FontWeight.w600),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Google Developer Group',
                                            style: primaryappTextStyle(
                                                16.sp, FontWeight.w400),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      space(32.h),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 25.w),
                        child: SizedBox(
                          height: 153.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Container(
                                  height: 153.h,
                                  width: 343.w,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/cardb.png'),
                                      fit: BoxFit
                                          .cover, // Ensures the image covers the entire container
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Social media',
                                            style: primaryappTextStyle(
                                                18.sp, FontWeight.w600),
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: Image.asset(
                                                    'images/instagram.png',
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: Image.asset(
                                                    'images/x.png',
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: Image.asset(
                                                    'images/facebook.png',
                                                  ),
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      space(30.h)
                    ],
                  ),
                ),
              ),
            ]))));
  }
}
