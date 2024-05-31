
import 'dart:ui';

import 'package:event/navigation/app.locator.dart';
import 'package:event/screens/beds.dart';
import 'package:event/screens/homescreen.dart';
import 'package:event/screens/mobility.dart';
import 'package:event/screens/ticket.dart';
import 'package:event/screens/vendor.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/app_router.dart';

const fyellow = Color(0xffFFB803);
const black = Color(0xff1E1E1E);
const tabbar = Color(0xff2E2A2A);
const tabbar2 = Color(0xff190000);

const white = Color(0xffFFFFFF);
 

TextStyle secondaryappTextStyle(double fontSize, [fontWeight]) {
  return GoogleFonts.montserrat(
    fontWeight: fontWeight,
    color: fyellow,
    fontSize: fontSize,
  );
}

TextStyle primaryappTextStyle(double fontSize, [fontWeight]) {
  return GoogleFonts.montserrat(
    fontWeight: fontWeight,
    color: white,
    fontSize: fontSize,
  );
}

final line = Container(
  height: 1.h,
  width: 350.w,
  color: Colors.white,
);

SizedBox space(double height) {
  return SizedBox(height: height);
}

Widget textbox(
  String hintText,
  Widget prefixIcon, {
  Widget? suffixIcon,
  bool obscureText = false,
  required double width,
  required double height,
  required double radius,
  VoidCallback? onTap, // Optional onTap callback
}) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        readOnly: true, // Set the text field as read-only
        onTap: onTap != null ? onTap : () {}, // If onTap is null, do nothing
        obscureText: obscureText,
        style: const TextStyle(color: Colors.yellow),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: white),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: const Color(0xffB15D46),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        ),
      ),
    ),
  );
}



class EventContainer extends StatelessWidget {
  final String imagePath;
  final String eventName;
  final String eventDate;
  final String eventLocation;

  const EventContainer({
    Key? key,
    required this.imagePath,
    required this.eventName,
    required this.eventDate,
    required this.eventLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27.r),
      child: Container(
        height: 285.h,
        width: 161.w,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            space(18.h),
            SizedBox(
              height: 151.h,
              width: 123.w,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              eventName,
              style: primaryappTextStyle(16.sp),
            ),
            Text(
              eventDate,
              style: secondaryappTextStyle(12.sp, FontWeight.w600),
            ),
            Text(
              eventLocation,
              style: primaryappTextStyle(12.sp),
            ),
            space(27.h),
          ],
        ),
      ),
    );
  }
}
final appRouter = locator<AppRouter>();
Theme buildDrawer(BuildContext context) {
  return Theme(
    data: Theme.of(context).copyWith(   // removed flutter defuslt radius on drawer
      drawerTheme: const DrawerThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    ),
    child: Drawer(
    backgroundColor: tabbar,
    
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SafeArea(
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 82,top: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/logo.png'),
                  
                  IconButton(
                    icon: const Icon(Icons.cancel, color: fyellow),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 33.h), 
        _drawerItem('Home', 'images/homeicon.png',  onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreenPage()));
}),
        SizedBox(height: 33.h),
        _drawerItem('Event finder', 'images/searchicon.png', onTap: () {}),
        SizedBox(height: 33.h),
        _drawerItem('Tickets', 'images/ticketicon.png', onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => TicketScreenPage()));
}),
        SizedBox(height: 33.h),
        _drawerItem('Mobility', 'images/mobilityicon.png', onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => MobilityScreenPage()));
}),
        SizedBox(height: 33.h),
        _drawerItem('Beds', 'images/bedicon.png', onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BedsScreenPage()));}),
        SizedBox(height: 33.h),
        _drawerItem('Vendor', 'images/bedicon.png', onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>VendorScreenPage()));}),
        SizedBox(height: 33.h),
        _drawerItem('Wallet & ID', null, icon: Icons.wallet, onTap: () {}),
        SizedBox(height: 33.h),
       
        Padding(
          padding: const EdgeInsets.only(left: 82,top: 40),
          child: ListTile(
            leading: const Icon(Icons.logout, color: fyellow),
            title: Text(
              'Logout',
              style: secondaryappTextStyle(18.sp, FontWeight.w600),
            ),
            onTap: () {},
          ),
        ),
        SizedBox(height: 80.h), 
      ],
    ),
  ));
}

Widget _drawerItem(String title, String? imagePath, {IconData? icon, VoidCallback? onTap}) {
  return Padding(
    padding: EdgeInsets.only(left: 64.w),
    child: ListTile(
      leading: imagePath != null ? Image.asset(imagePath) : Icon(icon, color: fyellow),
      title: Text(
        title,
        style: secondaryappTextStyle(18.sp, FontWeight.w600),
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    ),
  );
}


Widget appBar(GlobalKey<ScaffoldState> scaffoldKey) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset('images/menu.png'),
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  IconsaxOutline.setting_2,
                  color: white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const CircleAvatar(
                  foregroundImage: AssetImage('images/profile.png'),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget subheaderCustomRow(
    {required String text,
    required BuildContext context,
    required VoidCallback onSearchPressed}) {
  return Row(
    children: [
      Text(
        text,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          fontSize: 28.sp,
          color: Colors.white,
        ),
      ),
      const Spacer(),
      CircleAvatar(
        radius: 15,
        backgroundColor: const Color(0xff1e1e1e38),
        child: IconButton(
          icon: const Icon(Icons.mic, color: Colors.white,size: 15,),
          onPressed: () {},
        ),
      ),
      SizedBox(width: 9.w,),
     CircleAvatar(
        radius: 15,
        backgroundColor: const Color(0xff1E1E1E38),
        child: IconButton(
          icon: const Icon(Icons.search, color: Colors.white,size: 15,),
          onPressed: onSearchPressed,
        ),
      ),
       SizedBox(width: 9.w,),
      CircleAvatar(
        radius: 15,
        backgroundColor: const Color(0xff1E1E1E38),
        child: IconButton(
          icon: const Icon(Icons.filter_list, color: Colors.white,size: 15,),
          onPressed: () {},
        ),
      ),
    ],
  );
}

Widget eventCard({
  required BuildContext context,
  required String imagePath,
  required String passesText,
  required String timeLeftText,
  required String categoryText,
  required String eventName,
  required String eventTime,
  required String eventLocation,
  required String ticketPrice,
  required VoidCallback onTap,
  required VoidCallback onheartTap
}) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      height: 355.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 305.h,
              width: 343.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 29, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.equalizer,
                          color: white,
                        ),
                        Text(
                          passesText,
                          style: primaryappTextStyle(14.sp, FontWeight.w400),
                        ),
                        const Icon(
                          Icons.lock_clock,
                          color: white,
                        ),
                        Text(
                          timeLeftText,
                          style: primaryappTextStyle(14.sp, FontWeight.w400),
                        ),
                        Container(
                          height: 24.h,
                          width: 83.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: const Color(0xffAF482C),
                          ),
                          child: Center(
                              child: Text(
                            categoryText,
                            style: primaryappTextStyle(10.sp, FontWeight.w500),
                          )),
                        )
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        eventName,
                        style: primaryappTextStyle(22.sp, FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        eventTime,
                        style: secondaryappTextStyle(12.sp, FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            eventLocation,
                            style: primaryappTextStyle(12.sp, FontWeight.w600),
                          ),
                          const Spacer(),
                           GestureDetector(
                            onTap: onheartTap,
                            child: const Icon(IconsaxOutline.heart,color: white,size: 15,))
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 28.h,
                        width: 238.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                            color: black),
                        child: Align(
                          child: Text(
                            ticketPrice,
                            style:
                                secondaryappTextStyle(12.sp, FontWeight.w600),
                          ),
                        ),
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
  );
}

class SelectableCircle extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onSelected;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final Color innerCircleColor;

  const SelectableCircle({
    Key? key,
    required this.isSelected,
    required this.onSelected,
    this.size = 20.0,
    this.unselectedColor = Colors.grey,
    this.selectedColor = Colors.grey,
    this.innerCircleColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? selectedColor : unselectedColor,
        ),
        child: Center(
          child: isSelected
              ? Container(
                  width: size / 2,
                  height: size / 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: innerCircleColor,
                  ),
                )
              : Container(),
        ),
      ),
    );
  }

}
class GlassContainer extends StatelessWidget {
  final String title;
  final String amount;
  final String date;
  final String image;


  const GlassContainer({super.key, 
    required this.title,
    required this.amount,
    required this.date,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: 343.w,
        height: 153.h,
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
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    left: 20,
                    child: SizedBox(
                      height: 62.h,
                      width: 65.w,
                      child: Image.asset(image,fit: BoxFit.cover,),)),
                 Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 29, left: 19),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          title,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    _verticalSpace(14),
                    // SizedBox(
                    //         height: 62.h,
                    //         width: 65.w,
                    //         child: Image.asset('images/taxi.png')),
                              
                    Padding(
                      padding: const EdgeInsets.only(left:110, right: 19),
                      child: Row(
                        children: [
                          Text(
                            amount,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          const CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.white,
                            child: Icon(
                              IconsaxOutline.arrow_right_1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    space(17),
                    Padding(
                      padding: const EdgeInsets.only(left: 110, right: 110),
                      child: Row(
                        children: [
                          Text(
                            date,
                            style: GoogleFonts.montserrat(
                              color: Colors.yellow,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _verticalSpace(double height) {
    return SizedBox(height: height);
  }
}




