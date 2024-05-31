import 'package:auto_route/auto_route.dart';
import 'package:event/application/buyticketpage2viewmodel.dart';
import 'package:event/model/event.dart';
import 'package:event/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class BuyTicket2ScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  BuyTicket2ScreenPage({super.key});
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

    return ViewModelBuilder<BuyTicket2ScreenPageViewModel>.reactive(
      viewModelBuilder: () => BuyTicket2ScreenPageViewModel(),
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
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: subheaderCustomRow(
                              text: 'Buy ticket',
                              context: context,
                              onSearchPressed: () {}),
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
                                              'Attendee identity',
                                              style: primaryappTextStyle(
                                                  18.sp, FontWeight.w600),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              SelectableCircle(
                                                size: 20.0,
                                                isSelected: model
                                                        .attendeeselectedCircleIndex ==
                                                    0,
                                                onSelected: () => model
                                                    .attendeeselectCircle(0),
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
                                                    .attendeeselectCircle(1),
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
                              ],
                            ),
                          ),
                        ),
                        space(32.h),
                        ClipRRect(
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
                                  space(25.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: model.decrement,
                                        child: Container(
                                          width: 36.99,
                                          height: 37,
                                          color: const Color(0xffAF796A),
                                          child: const Center(
                                              child: Icon(Icons.remove,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Text('${model.counter}',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w400,
                                              color: white)),
                                      const SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: model.increment,
                                        child: Container(
                                          width: 36.99,
                                          height: 37,
                                          color: const Color(0xffAF796A),
                                          child: const Center(
                                              child: Icon(Icons.add,
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  space(18.h)
                                ],
                              ),
                            ),
                          ),
                        ),
                        space(18.h),
                        ClipRRect(
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
                              padding: const EdgeInsets.all(10.0),
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
                                    Container(
                                      width: 305.w,
                                      height: 49.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFAF796A),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Enter promo code',
                                              hintStyle:
                                                  primaryappTextStyle(11),
                                              suffix: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Apply',
                                                  style:
                                                      primaryappTextStyle(11),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                borderSide: BorderSide.none,
                                              ),
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              filled: true,
                                              fillColor: Colors.transparent,
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
                        space(32.h),
                        ClipRRect(
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
                                      'Payment type',
                                      style: primaryappTextStyle(
                                          18.sp, FontWeight.w600),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SelectableCircle(
                                        size: 20.0,
                                        isSelected:
                                            model.paymentselectedCircleIndex ==
                                                0,
                                        onSelected: () =>
                                            model.paymentselectCircle(0),
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
                                        isSelected:
                                            model.paymentselectedCircleIndex ==
                                                1,
                                        onSelected: () =>
                                            model.paymentselectCircle(1),
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
                           space(21.h),
                        ClipRRect(
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
                                      'Attendee identity',
                                      style: primaryappTextStyle(
                                          18.sp, FontWeight.w600),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SelectableCircle(
                                        size: 20.0,
                                        isSelected:
                                            model.attendeeselectedCircleIndex ==
                                                0,
                                        onSelected: () =>
                                            model.attendeeselectCircle(0),
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
                                        isSelected:
                                            model.attendeeselectedCircleIndex ==
                                                1,
                                        onSelected: () =>
                                            model.attendeeselectCircle(1),
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
                        space(21.h),
                        ClipRRect(
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
                              padding: const EdgeInsets.all(10.0),
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
                                    space(12.h),
                                    GestureDetector(
                                      onTap: () {
                                        model.navigateToPurchase2Screen();
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]))),
    );
  }
}
