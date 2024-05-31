import 'package:auto_route/auto_route.dart';
import 'package:event/application/alleventviewmodel.dart';
import 'package:event/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../model/event.dart';

@RoutePage()
class AllEventScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  AllEventScreenPage({super.key});
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

    return ViewModelBuilder<AllEventViewModel>.reactive(
      viewModelBuilder: () => AllEventViewModel(),
      builder: (context, model, child) => Scaffold(
        key: _scaffoldKey,
        drawer: buildDrawer(context),
        body: Container(
          decoration: const BoxDecoration(gradient: gradient),
          child: Column(
            children: [
              appBar(_scaffoldKey),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: subheaderCustomRow(
                    text: 'All events',
                    context: context,
                    onSearchPressed: () {}),
              ),
              _buildCategoryButtons(context, model),
              Expanded(
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: _buildCategoryContent(
                        context, model.selectedCategory, model),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCategoryButtons(BuildContext context, AllEventViewModel model) {
  List<String> categories = [
    'All',
    'Nightlife',
    'Sports',
    'Education',
    'Science & Technology',
    'Fitness & Well-being',
    'Food & Drink',
    'Agribusiness',
    'Travel & Vacation',
    'Games',
    'Movies',
    'Religion',
    'Career & Profession',
    'Culture',
    'Hangout',
    'Teenagers',
    'Oldies',
    'Kids',
    'Business',
    'Art',
    'Politics',
    'Party',
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
    BuildContext context, String selectedCategory, AllEventViewModel model) {
  switch (selectedCategory) {
    case 'Kids':
      return SingleChildScrollView(child: _allEventsContent(context, model));

    case 'Teenagers':
      return _teenagersContent();
    case 'Educational':
      return _educationalContent();
    case 'Business':
      return _businessContent();
    case 'Science & Technology':
      return _scienceTechnologyContent();
    case 'Fitness & Well-being':
      return _fitnessWellbeingContent();
    case 'Food & Drink':
      return _foodDrinkContent();
    default:
      return _allEventsContent(context, model);
  }
}

Widget _kidsContent() {
  return const Center(child: Text('Content for Kids Events'));
}

Widget _teenagersContent() {
  return const Center(child: Text('Content for Teenagers Events'));
}

Widget _educationalContent() {
  return const Center(child: Text('Content for Educational Events'));
}

Widget _businessContent() {
  return const Center(child: Text('Content for Business Events'));
}

Widget _scienceTechnologyContent() {
  return const Center(child: Text('Content for Science & Technology Events'));
}

Widget _fitnessWellbeingContent() {
  return const Center(child: Text('Content for Fitness & Well-being Events'));
}

Widget _foodDrinkContent() {
  return const Center(child: Text('Content for Food & Drink Events'));
}

Widget _allEventsContent(BuildContext context, AllEventViewModel model) {
  return SingleChildScrollView(
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
                    model.navigateToEventDeatailsScreen();
                  } else if (index == 1) {
                    model.navigateToEventDeatailsScreen();
                  } else if (index == 2) {
                    model.navigateToEventDeatailsScreen();
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
  );
}
