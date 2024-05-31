import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:event/application/basemodel.dart';
import 'package:event/routes/app_router.dart';
import 'package:event/utils/utils.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import '../application/mobilityviewmodel.dart';
import '../model/event.dart';

@RoutePage()
class Beds2ScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
 Beds2ScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BaseModel>.reactive(
      viewModelBuilder: () => BaseModel(),
      builder: (context, model, child) => Scaffold(
        key: _scaffoldKey,
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
                      'Beds',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.sp,
                        color: white,
                      ),
                      
                    ),
                  ),
                ),
                textbox('Santiago Bernabeu, Madrid, Spain', Icon(IconsaxOutline.search_normal_1), width: 339.w, height: 49.h, radius: 16),
               Expanded(
                 child: SingleChildScrollView(
                   child: Column(
                     children: [
                       Padding(
                                 padding: const EdgeInsets.symmetric(horizontal: 20),
                                 child: ListView.builder(
                                   shrinkWrap: true,
                                   physics:
                        const NeverScrollableScrollPhysics(), // Disable scrolling of inner ListView
                                   itemCount: eventlist.length,
                                   itemBuilder: (BuildContext context, int index) {
                                     var event = eventlist[index];
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
                          if (index == 0) {
                            appRouter.push(BookingDetailsScreenRoute());
                          } else if (index == 1) {
                           
                          } else if (index == 2) {
                          
                          }
                        },
                        onheartTap: () {
                          model.addToFavouriteList(event);
                        },
                                     );
                                   },
                                 ),
                               ),
                     ],
                   ),
                 ),
               ),
               
              ],
            ),
            
          ],
          
        ),
      ),
    );
  }
}
