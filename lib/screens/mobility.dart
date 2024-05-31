import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:event/utils/utils.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import '../application/mobilityviewmodel.dart';

@RoutePage()
class MobilityScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  MobilityScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MobilityScreenPageViewModel>.reactive(
      viewModelBuilder: () => MobilityScreenPageViewModel(),
      builder: (context, model, child) => Scaffold(
        key: _scaffoldKey,
        drawer: buildDrawer(context),
        body: Stack(
          children: [
            Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                    const Color(0xFF904934).withOpacity(0.80),
                    const Color(0xFF904934).withOpacity(1.0), 
                    const Color(0xFF904934), 
                  ],
           
          ),
        ),),
            Column(
              children: [
                appBar(_scaffoldKey),
                Padding(
                  padding: const EdgeInsets.only(left: 25,bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Mobility',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.sp,
                        color: white,
                      ),
                      
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        model.navigateTomobility2Screen();
                      },
                      child: Container(
                        height: 28.h,
                        width: 182.w,
                      
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: white),
                        child: Align(
                          child: Text(
                              'Purchased tickets',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: black,
                              ),
                              
                            ),
                        ),
                      ),
                    ),
                  ),
                ),
                space(25.h),
           Expanded(
  child: SizedBox(
    height: 574.h,
    width: 343.w,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(27),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/map.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      model.toggleOverlay();
                    },
                    child: textbox(
                      'Explore mobility options',
                      const Icon(IconsaxOutline.search_normal_1, color: Colors.white, size: 14,),
                      width: 305.w,
                      height: 49.h,
                      radius: 16.r,
                      onTap: () {
                        model.toggleOverlay();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ),
),

            
                space(72.h)
              ],
            ),
               if (model.showOverlay) _buildOverlay(context, model),
          ],
          
        ),
      ),
    );
  }
}
Widget _buildOverlay(BuildContext context, MobilityScreenPageViewModel model) {
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
                      Color(0xff904934),
                      Color(0xff904934),
                     
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
                          'Enter pickup location',
                          const Icon(
                            IconsaxOutline.search_normal_1,size: 14,color: white,
                          ),
                          height: 52.h,
                          width: 348.w,
                          radius: 16.r),
                      textbox(
                          'Enter destination location',
                          const Icon(
                            IconsaxOutline.gps,size: 14,color: white,
                          ),
                          height: 52.h,
                          width: 348.w,
                          radius: 16.r),
                      textbox(
                          'Enter start date',
                          const Icon(
                            IconsaxOutline.location,size: 14,color: white,
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
                            width: 93.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Airplane',
                              style: GoogleFonts.montserrat(
                                  color: black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                           SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.r),
                                color: white),
                            width: 61.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Taxi',
                              style: GoogleFonts.montserrat(
                                  color: black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                           SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.r),
                                color: white),
                            width: 60.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Bus',
                              style: GoogleFonts.montserrat(
                                  color: black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                           SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.r),
                                color: white),
                            width: 66.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Train',
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
                            GestureDetector(
                              onTap: (){
                                model.navigateTomobility2Screen();
                              },
                              child: Container(
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


