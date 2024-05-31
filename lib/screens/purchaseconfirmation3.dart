// import 'package:auto_route/auto_route.dart';
// import 'package:event/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

// @RoutePage()
// class  PurchaseConfirmation3ScreenPage extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//    PurchaseConfirmation3ScreenPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // Define the gradient for reuse
//     const gradient = LinearGradient(
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter,
//       colors: [
//         Color(0xFF984228),
//         Color(0xFFB64427),
//         Color(0x00EA7956),
//       ],
//       stops: [0.0, 1.0, 2.0],
//     );

//     return Scaffold(
//         key: _scaffoldKey,
//       // drawer: buildDrawer(context),
//         body: Container(
//             decoration: const BoxDecoration(
//               gradient: gradient,
//             ),
//             child: Column(children: [
//               appBar(_scaffoldKey),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25.w),
//                         child: Text(
//                           'Event details',
//                           style: GoogleFonts.montserrat(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 28.sp,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       space(14.sp),
//                       // Padding(
//                       //     padding: EdgeInsets.symmetric(horizontal: 25.w),
//                       //     child: eventCard(
//                       //         context: context,
//                       //         imagePath: 'images/event5.png',
//                       //         passesText: '200 passes',
//                       //         timeLeftText: '2 days to go',
//                       //         categoryText: 'Technology',
//                       //         eventName: 'GDG conference',
//                       //         eventTime: 'Fri Dec 22    10:00 - 12:00',
//                       //         eventLocation: 'Land mark centre',
//                       //         ticketPrice: 'Buy ticket starting at \$200',
//                       //         onTap: () {})),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 25.w),
//                         child: SizedBox(
//                           height: 153.h,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                                ClipRRect(
//                                 borderRadius: BorderRadius.circular(16),
//                                 child: Container(
//                                   height: 153.h,
//                                   width: 343.w,
//                                   decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                       image: AssetImage('images/cardb.png'),
//                                       fit: BoxFit
//                                           .cover, 
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 15),
//                                       child: Column(
                                                                          
                                           
//                                         children: [
//                                           Align(
//                                             alignment: Alignment.topLeft,
//                                             child: Text(
//                                               'Attendee identity',
//                                               style: primaryappTextStyle(
//                                                   18.sp, FontWeight.w600),
//                                             ),
//                                           ),
//                                          Row(
                                         
//                                           children: [
                                         
//                                            SizedBox(width: 26.w,),
//                                             Text(
//                                               'Use existing identity',
//                                               style: primaryappTextStyle(
//                                                   18.sp, FontWeight.w400),
//                                             ),
                                      
//                                           ],
//                                          ),
//                                          space(20.h),
//                                          Row(
                                         
//                                           children: [
                                          
//                                            SizedBox(width: 26.w,),
//                                             Text(
//                                               'Use custom identity',
//                                               style: primaryappTextStyle(
//                                                   18.sp, FontWeight.w400),
//                                             ),
                                      
//                                           ],
//                                          )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(16),
//                                 child: Container(
//                                   height: 153.h,
//                                   width: 343.w,
//                                   decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                       image: AssetImage('images/cardb.png'),
//                                       fit: BoxFit
//                                           .cover, // Ensures the image covers the entire container
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.topLeft,
//                                           child: Text(
//                                             'Description',
//                                             style: primaryappTextStyle(
//                                                 18.sp, FontWeight.w600),
//                                           ),
//                                         ),
//                                         Text(
//                                           'This event is scheduled for a techies in Nigeria to discuss current issues facing the tech ecosystem.',
//                                           style: primaryappTextStyle(
//                                               16.sp, FontWeight.w400),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       space(32.h),
//                       Padding(
//                         padding:  EdgeInsets.symmetric(horizontal: 25.w),
//                         child: SizedBox(
//                           height: 153.h,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(16),
//                                 child: Container(
//                                   height: 153.h,
//                                   width: 343.w,
//                                   decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                       image: AssetImage('images/cardb.png'),
//                                       fit: BoxFit
//                                           .cover, 
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.topLeft,
//                                           child: Text(
//                                             'Organizer',
//                                             style: primaryappTextStyle(
//                                                 18.sp, FontWeight.w600),
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment: Alignment.topLeft,
//                                           child: Text(
//                                             'Google Developer Group',
//                                             style: primaryappTextStyle(
//                                                 16.sp, FontWeight.w400),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       space(32.h),
//                       Padding(
//                         padding:  EdgeInsets.symmetric(horizontal: 25.w),
//                         child: SizedBox(
//                           height: 153.h,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(16),
//                                 child: Container(
//                                   height: 153.h,
//                                   width: 343.w,
//                                   decoration: const BoxDecoration(
//                                     image: DecorationImage(
//                                       image: AssetImage('images/cardb.png'),
//                                       fit: BoxFit
//                                           .cover, // Ensures the image covers the entire container
//                                     ),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceAround,
//                                       children: [
//                                         Align(
//                                           alignment: Alignment.topLeft,
//                                           child: Text(
//                                             'Social media',
//                                             style: primaryappTextStyle(
//                                                 18.sp, FontWeight.w600),
//                                           ),
//                                         ),
//                                         Align(
//                                             alignment: Alignment.topLeft,
//                                             child: Row(
//                                               children: [
//                                                 CircleAvatar(
//                                                   backgroundColor:
//                                                       Colors.transparent,
//                                                   child: Image.asset(
//                                                     'images/instagram.png',
//                                                   ),
//                                                 ),
//                                                 CircleAvatar(
//                                                   backgroundColor:
//                                                       Colors.transparent,
//                                                   child: Image.asset(
//                                                     'images/x.png',
//                                                   ),
//                                                 ),
//                                                 CircleAvatar(
//                                                   backgroundColor:
//                                                       Colors.transparent,
//                                                   child: Image.asset(
//                                                     'images/facebook.png',
//                                                   ),
//                                                 )
//                                               ],
//                                             )),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       space(30.h)
//                     ],
//                   ),
//                 ),
//               ),
//             ])));
//   }
// }
