import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:event/application/ticketviewmodel.dart';
import 'package:event/model/event.dart';
import 'package:event/utils/utils.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../application/mobilityviewmodel.dart';

@RoutePage()
class VendorScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  VendorScreenPage({super.key});
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

    return ViewModelBuilder<TicketsViewModel>.reactive(
      viewModelBuilder: () => TicketsViewModel(),
      builder: (context, model, child) => Scaffold(
        key: _scaffoldKey,
        drawer: buildDrawer(context),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(gradient: gradient),
            child: Column(
              children: [
                appBar(_scaffoldKey),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: subheaderCustomRow(
                      text: 'Vendors',
                      context: context,
                      onSearchPressed: () {
                        model.toggleOverlay();
                      }),
                ),
                _buildCategoryForTicketButtons(context, model),
                Expanded(
                  child: SingleChildScrollView(
                      child: _buildCategoryContent(
                          context, model.selectedCategory, model)),
                ),
              ],
            ),
          ),
          if (model.showOverlay) _buildOverlay(context, model),
        ]),
      ),
    );
  }
}

Widget _buildCategoryForTicketButtons(
  BuildContext context,
  TicketsViewModel model,
) {
  List<String> categories = [
    'All',
    'Favorited',
    'Booked',
  ];
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: SizedBox(
      height: 28.h,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String category = categories[index];
          bool isSelected = model.selectedCategory == category.trim();
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: ElevatedButton(
              onPressed: () => model.selectCategory(category.trim()),
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected ? Colors.black : Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.r),
                ),
              ),
              child: Center(
                child: Text(
                  category,
                  style: GoogleFonts.montserrat(
                    color: isSelected ? Colors.yellow : Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

Widget _buildCategoryContent(
    BuildContext context, String selectedCategory, TicketsViewModel model) {
  switch (selectedCategory) {
    case 'All':
      return _allTicket(context, model);

    case 'Favorited':
      return _favoritedTicket();
    case 'Purchased':
      return _purchasedTicket();

    default:
      return _allTicket(context, model);
  }
}

Widget _allTicket(BuildContext context, TicketsViewModel model) {
  return Center(
      child: Column(
    children: [
      space(17.h),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          shrinkWrap: true,
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
                onTap: () {},
                onheartTap: () {
                  model.addToFavouriteList(event);
                });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          shrinkWrap: true,
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
                onTap: () {},
                onheartTap: () {
                  model.addToFavouriteList(event);
                });
          },
        ),
      ),
    ],
  ));
}

Widget _favoritedTicket() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: favouritelist.length,
      itemBuilder: (BuildContext context, int index) {
        var event = favouritelist[index];
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
            onheartTap: () {});
      },
    ),
  );
}

Widget _purchasedTicket() {
  return const Center(child: Text('Content for Educational Events'));
}

Widget _buildOverlay(BuildContext context, TicketsViewModel model) {
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
                                style: secondaryappTextStyle(
                                    14.sp, FontWeight.w700)),
                            const Spacer(),
                            Image.asset('images/filter.png')
                          ],
                        ),
                      ),
                      textbox(
                          'Enter vendor search',
                          const Icon(
                            IconsaxOutline.location,
                            size: 14,
                            color: white,
                          ),
                          height: 52.h,
                          width: 348.w,
                          radius: 16.r),
                      textbox(
                          'Enter search area',
                          const Icon(
                            IconsaxOutline.calendar,
                            size: 14,
                            color: white,
                          ),
                          height: 52.h,
                          width: 348.w,
                          radius: 16.r),
                      textbox(
                          'Enter booking date',
                          const Icon(
                            IconsaxOutline.calendar,
                            size: 14,
                            color: white,
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
                            width: 112.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Food & drinks ',
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
                            width: 125.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Fashion&styling',
                              style: GoogleFonts.montserrat(
                                  color: black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.r),
                                color: black),
                            width: 124.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Photographer',
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
                            width: 126.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Gift & favours',
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
                            width: 71.w,
                            height: 28.h,
                            child: Center(
                                child: Text(
                              'Others',
                              style: GoogleFonts.montserrat(
                                  color: black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
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
                              onTap: () {
                                // appRouter.push(Beds2ScreenRoute());
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
