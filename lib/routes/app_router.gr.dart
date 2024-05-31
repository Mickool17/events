// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:event/screens/all_event.dart' as _i1;
import 'package:event/screens/beds.dart' as _i3;
import 'package:event/screens/beds2.dart' as _i2;
import 'package:event/screens/bookingconfirm.dart' as _i4;
import 'package:event/screens/bookingdetails.dart' as _i5;
import 'package:event/screens/buyticketpage1.dart' as _i6;
import 'package:event/screens/buyticketpage2.dart' as _i7;
import 'package:event/screens/eventdetails.dart' as _i8;
import 'package:event/screens/homescreen.dart' as _i9;
import 'package:event/screens/landingpage.dart' as _i10;
import 'package:event/screens/login.dart' as _i11;
import 'package:event/screens/mobility.dart' as _i13;
import 'package:event/screens/mobilityscreen2.dart' as _i12;
import 'package:event/screens/purchaseconfirmation1.dart' as _i14;
import 'package:event/screens/signup.dart' as _i15;
import 'package:event/screens/ticket.dart' as _i16;
import 'package:event/screens/vendor.dart' as _i17;
import 'package:flutter/material.dart' as _i19;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AllEventScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AllEventScreenRouteArgs>(
          orElse: () => const AllEventScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AllEventScreenPage(key: args.key),
      );
    },
    Beds2ScreenRoute.name: (routeData) {
      final args = routeData.argsAs<Beds2ScreenRouteArgs>(
          orElse: () => const Beds2ScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.Beds2ScreenPage(key: args.key),
      );
    },
    BedsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BedsScreenRouteArgs>(
          orElse: () => const BedsScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.BedsScreenPage(key: args.key),
      );
    },
    BookingConfirmationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BookingConfirmationScreenRouteArgs>(
          orElse: () => const BookingConfirmationScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.BookingConfirmationScreenPage(key: args.key),
      );
    },
    BookingDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BookingDetailsScreenRouteArgs>(
          orElse: () => const BookingDetailsScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.BookingDetailsScreenPage(key: args.key),
      );
    },
    BuyTicket1ScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BuyTicket1ScreenRouteArgs>(
          orElse: () => const BuyTicket1ScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.BuyTicket1ScreenPage(key: args.key),
      );
    },
    BuyTicket2ScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BuyTicket2ScreenRouteArgs>(
          orElse: () => const BuyTicket2ScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.BuyTicket2ScreenPage(key: args.key),
      );
    },
    EventDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailsScreenRouteArgs>(
          orElse: () => const EventDetailsScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.EventDetailsScreenPage(key: args.key),
      );
    },
    HomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<HomeScreenRouteArgs>(
          orElse: () => const HomeScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.HomeScreenPage(key: args.key),
      );
    },
    LandingRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.LandingPage(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.LoginScreenPage(),
      );
    },
    MobilityScreen2Route.name: (routeData) {
      final args = routeData.argsAs<MobilityScreen2RouteArgs>(
          orElse: () => const MobilityScreen2RouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.MobilityScreen2Page(key: args.key),
      );
    },
    MobilityScreenRoute.name: (routeData) {
      final args = routeData.argsAs<MobilityScreenRouteArgs>(
          orElse: () => const MobilityScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.MobilityScreenPage(key: args.key),
      );
    },
    PurchaseConfirmation1ScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PurchaseConfirmation1ScreenRouteArgs>(
          orElse: () => const PurchaseConfirmation1ScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.PurchaseConfirmation1ScreenPage(key: args.key),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SignUpScreenPage(),
      );
    },
    TicketScreenRoute.name: (routeData) {
      final args = routeData.argsAs<TicketScreenRouteArgs>(
          orElse: () => const TicketScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.TicketScreenPage(key: args.key),
      );
    },
    VendorScreenRoute.name: (routeData) {
      final args = routeData.argsAs<VendorScreenRouteArgs>(
          orElse: () => const VendorScreenRouteArgs());
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.VendorScreenPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AllEventScreenPage]
class AllEventScreenRoute extends _i18.PageRouteInfo<AllEventScreenRouteArgs> {
  AllEventScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          AllEventScreenRoute.name,
          args: AllEventScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AllEventScreenRoute';

  static const _i18.PageInfo<AllEventScreenRouteArgs> page =
      _i18.PageInfo<AllEventScreenRouteArgs>(name);
}

class AllEventScreenRouteArgs {
  const AllEventScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'AllEventScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.Beds2ScreenPage]
class Beds2ScreenRoute extends _i18.PageRouteInfo<Beds2ScreenRouteArgs> {
  Beds2ScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          Beds2ScreenRoute.name,
          args: Beds2ScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Beds2ScreenRoute';

  static const _i18.PageInfo<Beds2ScreenRouteArgs> page =
      _i18.PageInfo<Beds2ScreenRouteArgs>(name);
}

class Beds2ScreenRouteArgs {
  const Beds2ScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'Beds2ScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.BedsScreenPage]
class BedsScreenRoute extends _i18.PageRouteInfo<BedsScreenRouteArgs> {
  BedsScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          BedsScreenRoute.name,
          args: BedsScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BedsScreenRoute';

  static const _i18.PageInfo<BedsScreenRouteArgs> page =
      _i18.PageInfo<BedsScreenRouteArgs>(name);
}

class BedsScreenRouteArgs {
  const BedsScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'BedsScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.BookingConfirmationScreenPage]
class BookingConfirmationScreenRoute
    extends _i18.PageRouteInfo<BookingConfirmationScreenRouteArgs> {
  BookingConfirmationScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          BookingConfirmationScreenRoute.name,
          args: BookingConfirmationScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookingConfirmationScreenRoute';

  static const _i18.PageInfo<BookingConfirmationScreenRouteArgs> page =
      _i18.PageInfo<BookingConfirmationScreenRouteArgs>(name);
}

class BookingConfirmationScreenRouteArgs {
  const BookingConfirmationScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'BookingConfirmationScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.BookingDetailsScreenPage]
class BookingDetailsScreenRoute
    extends _i18.PageRouteInfo<BookingDetailsScreenRouteArgs> {
  BookingDetailsScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          BookingDetailsScreenRoute.name,
          args: BookingDetailsScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookingDetailsScreenRoute';

  static const _i18.PageInfo<BookingDetailsScreenRouteArgs> page =
      _i18.PageInfo<BookingDetailsScreenRouteArgs>(name);
}

class BookingDetailsScreenRouteArgs {
  const BookingDetailsScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'BookingDetailsScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.BuyTicket1ScreenPage]
class BuyTicket1ScreenRoute
    extends _i18.PageRouteInfo<BuyTicket1ScreenRouteArgs> {
  BuyTicket1ScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          BuyTicket1ScreenRoute.name,
          args: BuyTicket1ScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BuyTicket1ScreenRoute';

  static const _i18.PageInfo<BuyTicket1ScreenRouteArgs> page =
      _i18.PageInfo<BuyTicket1ScreenRouteArgs>(name);
}

class BuyTicket1ScreenRouteArgs {
  const BuyTicket1ScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'BuyTicket1ScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.BuyTicket2ScreenPage]
class BuyTicket2ScreenRoute
    extends _i18.PageRouteInfo<BuyTicket2ScreenRouteArgs> {
  BuyTicket2ScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          BuyTicket2ScreenRoute.name,
          args: BuyTicket2ScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BuyTicket2ScreenRoute';

  static const _i18.PageInfo<BuyTicket2ScreenRouteArgs> page =
      _i18.PageInfo<BuyTicket2ScreenRouteArgs>(name);
}

class BuyTicket2ScreenRouteArgs {
  const BuyTicket2ScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'BuyTicket2ScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.EventDetailsScreenPage]
class EventDetailsScreenRoute
    extends _i18.PageRouteInfo<EventDetailsScreenRouteArgs> {
  EventDetailsScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          EventDetailsScreenRoute.name,
          args: EventDetailsScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EventDetailsScreenRoute';

  static const _i18.PageInfo<EventDetailsScreenRouteArgs> page =
      _i18.PageInfo<EventDetailsScreenRouteArgs>(name);
}

class EventDetailsScreenRouteArgs {
  const EventDetailsScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'EventDetailsScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.HomeScreenPage]
class HomeScreenRoute extends _i18.PageRouteInfo<HomeScreenRouteArgs> {
  HomeScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          HomeScreenRoute.name,
          args: HomeScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i18.PageInfo<HomeScreenRouteArgs> page =
      _i18.PageInfo<HomeScreenRouteArgs>(name);
}

class HomeScreenRouteArgs {
  const HomeScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'HomeScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.LandingPage]
class LandingRoute extends _i18.PageRouteInfo<void> {
  const LandingRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.LoginScreenPage]
class LoginScreenRoute extends _i18.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i18.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.MobilityScreen2Page]
class MobilityScreen2Route
    extends _i18.PageRouteInfo<MobilityScreen2RouteArgs> {
  MobilityScreen2Route({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          MobilityScreen2Route.name,
          args: MobilityScreen2RouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MobilityScreen2Route';

  static const _i18.PageInfo<MobilityScreen2RouteArgs> page =
      _i18.PageInfo<MobilityScreen2RouteArgs>(name);
}

class MobilityScreen2RouteArgs {
  const MobilityScreen2RouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'MobilityScreen2RouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.MobilityScreenPage]
class MobilityScreenRoute extends _i18.PageRouteInfo<MobilityScreenRouteArgs> {
  MobilityScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          MobilityScreenRoute.name,
          args: MobilityScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MobilityScreenRoute';

  static const _i18.PageInfo<MobilityScreenRouteArgs> page =
      _i18.PageInfo<MobilityScreenRouteArgs>(name);
}

class MobilityScreenRouteArgs {
  const MobilityScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'MobilityScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.PurchaseConfirmation1ScreenPage]
class PurchaseConfirmation1ScreenRoute
    extends _i18.PageRouteInfo<PurchaseConfirmation1ScreenRouteArgs> {
  PurchaseConfirmation1ScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          PurchaseConfirmation1ScreenRoute.name,
          args: PurchaseConfirmation1ScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PurchaseConfirmation1ScreenRoute';

  static const _i18.PageInfo<PurchaseConfirmation1ScreenRouteArgs> page =
      _i18.PageInfo<PurchaseConfirmation1ScreenRouteArgs>(name);
}

class PurchaseConfirmation1ScreenRouteArgs {
  const PurchaseConfirmation1ScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'PurchaseConfirmation1ScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.SignUpScreenPage]
class SignUpScreenRoute extends _i18.PageRouteInfo<void> {
  const SignUpScreenRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SignUpScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpScreenRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TicketScreenPage]
class TicketScreenRoute extends _i18.PageRouteInfo<TicketScreenRouteArgs> {
  TicketScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          TicketScreenRoute.name,
          args: TicketScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'TicketScreenRoute';

  static const _i18.PageInfo<TicketScreenRouteArgs> page =
      _i18.PageInfo<TicketScreenRouteArgs>(name);
}

class TicketScreenRouteArgs {
  const TicketScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'TicketScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.VendorScreenPage]
class VendorScreenRoute extends _i18.PageRouteInfo<VendorScreenRouteArgs> {
  VendorScreenRoute({
    _i19.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
          VendorScreenRoute.name,
          args: VendorScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'VendorScreenRoute';

  static const _i18.PageInfo<VendorScreenRouteArgs> page =
      _i18.PageInfo<VendorScreenRouteArgs>(name);
}

class VendorScreenRouteArgs {
  const VendorScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'VendorScreenRouteArgs{key: $key}';
  }
}
