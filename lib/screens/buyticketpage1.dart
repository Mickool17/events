import 'package:auto_route/auto_route.dart';
import 'package:event/application/buyticketpage1viewmodel.dart';
import 'package:event/model/event.dart';
import 'package:event/routes/app_router.dart';
import 'package:event/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

import '../navigation/app.locator.dart';

@RoutePage()
class BuyTicket1ScreenPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final appRouter = locator<AppRouter>();
  BuyTicket1ScreenPage({super.key});

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

    return ViewModelBuilder<BuyTicket1ScreenPageViewModel>.reactive(
      viewModelBuilder: () => BuyTicket1ScreenPageViewModel(),
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
                       Column(
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
                    model.navigateToTicket2Screen()
                   ;
                  } else if (index == 1) {
                   ;
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
                        // Padding(
                        //     padding: EdgeInsets.symmetric(
                        //       horizontal: 25.w,
                        //     ),
                        //     child: eventCard(
                        //         context: context,
                        //         imagePath: 'images/event5.png',
                        //         passesText: '200 passes',
                        //         timeLeftText: '2 days to go',
                        //         categoryText: 'Technology',
                        //         eventName: 'GDG conference',
                        //         eventTime: 'Fri Dec 22    10:00 - 12:00',
                        //         eventLocation: 'Land mark centre',
                        //         ticketPrice: 'Early bird  \$20.00',
                        //         onTap: () {})),
                        // Padding(
                        //     padding: EdgeInsets.symmetric(horizontal: 25.w),
                        //     child: eventCard(
                        //         context: context,
                        //         imagePath: 'images/event6.png',
                        //         passesText: '200 passes',
                        //         timeLeftText: '2 days to go',
                        //         categoryText: 'Technology',
                        //         eventName: 'GDG conference',
                        //         eventTime: 'Fri Dec 22    10:00 - 12:00',
                        //         eventLocation: 'Land mark centre',
                        //         ticketPrice: 'Premium at \$200.00',
                        //         onTap: () {
                        //           appRouter.push(BuyTicket2ScreenRoute());
                        //         })),
                        // Padding(
                        //     padding: EdgeInsets.symmetric(horizontal: 25.w),
                        //     child: eventCard(
                        //         context: context,
                        //         imagePath: 'images/event5.png',
                        //         passesText: '200 passes',
                        //         timeLeftText: '2 days to go',
                        //         categoryText: 'Technology',
                        //         eventName: 'GDG conference',
                        //         eventTime: 'Fri Dec 22    10:00 - 12:00',
                        //         eventLocation: 'Land mark centre',
                        //         ticketPrice: 'Buy ticket starting at \$200',
                        //         onTap: () {})),
                      ],
                    ),
                  ),
                ),
              ]))),
    );
  }
}
