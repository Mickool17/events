import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:event/application/homescreenviewmodel.dart';
import 'package:event/utils/utils.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class HomeScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreenPage({super.key});
  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      viewModelBuilder: () => HomeScreenViewModel(),
      builder: (context, model, child) => Scaffold(
          key: _scaffoldKey,
          drawer: buildDrawer(context),
          body: Stack(children: [
            Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient( 
                  colors: [
                    Color(0xFFEA7956), 
                    Color(0xFFB64427),
                    Color(0xFFEA7956),
                  ],
                
                ),
                ),
                child: Column(children: [
                  appBar(_scaffoldKey),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: subheaderCustomRow(
                                text: 'Your interests',
                                context: context,
                                onSearchPressed: () => model.toggleOverlay(),
                              )),
                          space(14.sp),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: SizedBox(
                              height: 405,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(27.r),
                                    child: Container(
                                      height: 305.h,
                                      width: 172.w,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffEA7956),
                                            Color(0xffB64427),
                                            Color(0xffEA7956),
                                          ],
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          space(22.h),
                                          SizedBox(
                                            height: 151.h,
                                            width: 123.w,
                                            child: Image.asset(
                                              'images/event1.png',
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Text(
                                            'End of Year \n Fuji Fest',
                                            style: primaryappTextStyle(
                                              14.sp,
                                            ),
                                          ),
                                          Text(
                                            '5 days to go',
                                            style: secondaryappTextStyle(
                                                14.sp, FontWeight.w600),
                                          ),
                                          Text(
                                            'View event ',
                                            style: primaryappTextStyle(
                                              14.sp,
                                            ),
                                          ),
                                          space(16.h)
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        child: SizedBox(
                                          height: 145.h,
                                          width: 159.w,
                                          child: Image.asset(
                                            'images/event2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      space(16.h),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
                                        child: SizedBox(
                                          height: 145.h,
                                          width: 159.w,
                                          child: Image.asset(
                                            'images/event3.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              children: [
                                Text(
                                  'All events',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                const Spacer(),
                                IconButton(
                                  icon: const Icon(Icons.arrow_forward_ios,
                                      color: Colors.white),
                                  onPressed: () {
                                    model.navigateToAllEventScreen();
                                  },
                                ),
                              ],
                            ),
                          ),
                          space(21.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: SizedBox(
                              height: 405,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const EventContainer(
                                      imagePath: 'images/event4.png',
                                      eventName: 'GDG conference',
                                      eventDate: 'Fri Dec 22  10:00 - 12:00',
                                      eventLocation: 'Landmark Centre '),
                                  SizedBox(width: 16.w),
                                  const EventContainer(
                                      imagePath: 'images/event1.png',
                                      eventName: 'GDG conference',
                                      eventDate: 'Fri Dec 22  10:00 - 12:00',
                                      eventLocation: 'Landmark Centre '),
                                  SizedBox(height: 16.h),
                                ],
                              ),
                            ),
                          ),
                    
                        ],
                      ),
                    ),
                  ),
                ])),
            if (model.showOverlay) _buildOverlay(context, model),
          ])),
    );
  }
}

Widget _buildOverlay(BuildContext context, HomeScreenViewModel model) {
  return GestureDetector(
    onTap: model.toggleOverlay,
    behavior: HitTestBehavior.opaque,
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        color: Colors.black.withOpacity(0.5),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {},
            child: SingleChildScrollView(
              child: Container(
                height: 426.h,
                width: 393.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffEA7956),
                      Color(0xffB64427),
                      Color(0xffEA7956),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                                           
                          children: [
                            Text("Search filter",
                                style: secondaryappTextStyle(14.sp, FontWeight.w700)),
                                const Spacer(),
                                Image.asset('images/filter.png')
                                
                          ],
                        ),
                      ),
                      textbox(
                          'Search name',
                          const Icon(
                            IconsaxOutline.search_normal_1,size: 14,
                          ),
                          height: 52.h,
                          width: 348.w,
                          radius: 16.r),
                      textbox(
                          'Event date',
                          const Icon(
                            IconsaxOutline.gps,size: 14,
                          ),
                          height: 52.h,
                          width: 348.w,
                          radius: 16.r),
                      textbox(
                          'Location',
                          const Icon(
                            IconsaxOutline.location,size: 14,
                          ),
                          height: 52.h,
                          width: 348.w,
                          radius: 16.r),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.r),
                                color: black),
                            width: 52.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'All',
                              style:
                                  secondaryappTextStyle(14.sp, FontWeight.w600),
                            )),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.r),
                                color: white),
                            width: 166.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Based on interests',
                              style: GoogleFonts.montserrat(
                                  color: black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: white,
                                border: Border.all(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                              ),
                              width: 150.w,
                              height: 48.h,
                              child: Center(
                                child: Text(
                                  'Discard',
                                  style: GoogleFonts.montserrat(
                                      color: Colors.red,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: black,
                                border: Border.all(
                                  color: Colors.yellow,
                                  width: 2.0,
                                ),
                              ),
                              width: 150.w,
                              height: 48.h,
                              child: Center(
                                child: Text(
                                  'Search',
                                  style: GoogleFonts.montserrat(
                                      color: fyellow,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}


