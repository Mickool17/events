import 'package:auto_route/auto_route.dart';
import 'package:event/application/ticketviewmodel.dart';
import 'package:event/model/event.dart';
import 'package:event/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class TicketScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TicketScreenPage({super.key});
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
        body: Container(
          decoration: const BoxDecoration(gradient: gradient),
          child: Column(
            children: [
              appBar(_scaffoldKey),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: subheaderCustomRow(
                    text: 'Tickets', context: context, onSearchPressed: () {}),
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
    'Purchased',
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
                                  onTap: () {

                                  
                                  }, onheartTap: () { 
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
                                  onTap: () {

                                  
                                  }, onheartTap: () { 
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
            onTap: () {}, onheartTap: () {  });
      },
    ),
  );
}

Widget _purchasedTicket() {
  return const Center(child: Text('Content for Educational Events'));
}
