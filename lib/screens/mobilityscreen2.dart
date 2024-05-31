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
class MobilityScreen2Page extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  MobilityScreen2Page({super.key});

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
              ),
            ),
            SingleChildScrollView(
              child: Column(children: [
                appBar(_scaffoldKey),
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 10),
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
                textbox('Santiago Bernabeu, Madrid, Spain',
                    const Icon(IconsaxOutline.search_normal_1,size: 17, color: white,),
                    width: 305.w, height: 49.h, radius: 16.r),
                space(68.h),
                const GlassContainer(
                    image: 'images/taxi.png',
                    title: 'Taxi',
                    amount: 'NGN 20,000.00',
                    date: 'Fri Dec 22 0:00am'),
                space(32.h),
                const GlassContainer(
                    image: 'images/train.png',
                    title: 'Train',
                    amount: 'NGN 200,000.00',
                    date: 'Fri Dec 22 10:00am'),
                space(32.h),
                const GlassContainer(
                    image: 'images/plane.png',
                    title: 'Airplane',
                    amount: 'NGN 2,000,000.00',
                    date: 'Fri Dec 22 10:00am'),
                space(32.h),
                const GlassContainer(
                    image: 'images/bus.png',
                    title: 'Bus',
                    amount: 'NGN 200,000.00',
                    date: 'Fri Dec 22 10:00am'),
                space(71.h)
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
