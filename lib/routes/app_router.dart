import 'package:auto_route/auto_route.dart';
import 'package:event/screens/vendor.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

export 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
@LazySingleton()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: LandingRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: LoginScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: SignUpScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: HomeScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: EventDetailsScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: AllEventScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: BuyTicket1ScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: BuyTicket2ScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: PurchaseConfirmation1ScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: TicketScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: MobilityScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: MobilityScreen2Route.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: BedsScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: Beds2ScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
         CustomRoute(
          page: BookingDetailsScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
         CustomRoute(
          page: BookingConfirmationScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: VendorScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ];
}
