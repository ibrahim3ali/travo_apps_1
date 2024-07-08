import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';

import '../../view/screen/add_card/add_card.dart';
import '../../view/screen/add_passenger/add_passenger.dart';
import '../../view/screen/add_passengers/add_passengers.dart';
import '../../view/screen/booking_flight/booking_flight.dart';
import '../../view/screen/booking_hotel/booking_hotel.dart';
import '../../view/screen/checkkout_flight/checkkout_flight.dart';
import '../../view/screen/checkkout_hotel/checkkout_hotel.dart';
import '../../view/screen/contact_details/contact_details.dart';
import '../../view/screen/data_cart_list_tile/facilities_flight/facilities_flight.dart';
import '../../view/screen/data_cart_list_tile/sort_by_flight/sort_by_flight.dart';
import '../../view/screen/data_cart_list_tile/facilities_hotel/facilities_hotel.dart';
import '../../view/screen/flight_and_hotel/flight_and_hotel.dart';
import '../../view/screen/flight_and_hotel/flight_and_hotel_three_widget.dart';
import '../../view/screen/forgot_password/forgot_password.dart';
import '../../view/screen/guest_and_room/guest_and_room.dart';
import '../../view/screen/home/home.dart';
import '../../view/screen/hotel_picture/hotel_picture.dart';
import '../../view/screen/login/login.dart';
import '../../view/screen/on_boarding/on_boarding.dart';
import '../../view/screen/promo_code/promo_code.dart';
import '../../view/screen/data_cart_list_tile/property_type/property_type.dart';
import '../../view/screen/result_flight/result_flight.dart';
import '../../view/screen/result_hotel/result_hotel.dart';
import '../../view/screen/review_hotel/review_hotel.dart';
import '../../view/screen/search_destination/search_destination.dart';
import '../../view/screen/select_date/select_date.dart';
import '../../view/screen/select_room/select_room.dart';
import '../../view/screen/select_seat/select_seat.dart';
import '../../view/screen/sign_up/sign_up.dart';
import '../../view/screen/data_cart_list_tile/sort_by_hotel/sort_by_hotel.dart';
import '../../view/screen/splash/splash.dart';

extension AddSlashsdfasdfasdf on String {
  String get addSlash {
    return "/$this";
  }
}

final navigatorKey = GlobalKey<NavigatorState>();
final GoRouter allScreens = GoRouter(
  initialLocation: RoutesName.onBoarding.addSlash,
  navigatorKey: navigatorKey,
  // redirect: ,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesName.onBoarding.addSlash,
      name: RoutesName.onBoarding,
      builder: (context, state) {
        return const OnBoarding();
      },
    ),
    GoRoute(
      path: RoutesName.bookingHotel.addSlash,
      name: RoutesName.bookingHotel,
      builder: (context, state) {
        return const BookingHotel();
      },
    ),
    GoRoute(
      path: RoutesName.forgotPassword.addSlash,
      name: RoutesName.forgotPassword,
      builder: (context, state) {
        return const ForgotPassword();
      },
    ),
    GoRoute(
      path: RoutesName.guestAndRoom.addSlash,
      name: RoutesName.guestAndRoom,
      builder: (context, state) {
        return const GuestAndRoom();
      },
    ),
    GoRoute(
      path: RoutesName.home.addSlash,
      name: RoutesName.home,
      builder: (context, state) {
        return const Home();
      },
    ),
    GoRoute(
      path: RoutesName.login.addSlash,
      name: RoutesName.login,
      builder: (context, state) {
        return const Login();
      },
    ),
    GoRoute(
      path: RoutesName.resultHotel.addSlash,
      name: RoutesName.resultHotel,
      builder: (context, state) {
        return const ResultHotel();
      },
    ),
    GoRoute(
      path: RoutesName.searchDestination.addSlash,
      name: RoutesName.searchDestination,
      builder: (context, state) {
        return const SearchDestination();
      },
    ),
    GoRoute(
      path: RoutesName.selectDate.addSlash,
      name: RoutesName.selectDate,
      builder: (context, state) {
        return const SelectDate();
      },
    ),
    GoRoute(
      path: RoutesName.signUp.addSlash,
      name: RoutesName.signUp,
      builder: (context, state) {
        return const SignUp();
      },
    ),
    GoRoute(
      path: RoutesName.splash.addSlash,
      name: RoutesName.splash,
      builder: (context, state) {
        return const Splash();
      },
    ),
    GoRoute(
      path: RoutesName.addCard.addSlash,
      name: RoutesName.addCard,
      builder: (context, state) {
        return const AddCard();
      },
    ),
    GoRoute(
      path: RoutesName.addPassenger.addSlash,
      name: RoutesName.addPassenger,
      builder: (context, state) {
        return const AddPassenger();
      },
    ),
    GoRoute(
      path: RoutesName.addPassengers.addSlash,
      name: RoutesName.addPassengers,
      builder: (context, state) {
        return const AddPassengers();
      },
    ),
    GoRoute(
      path: RoutesName.bookingFlight.addSlash,
      name: RoutesName.bookingFlight,
      builder: (context, state) {
        return const BookingFlight();
      },
    ),
    GoRoute(
      path: RoutesName.checkkoutFlight.addSlash,
      name: RoutesName.checkkoutFlight,
      builder: (context, state) {
        return const CheckkoutFlight();
      },
    ),
    GoRoute(
      path: RoutesName.checkkoutHotel.addSlash,
      name: RoutesName.checkkoutHotel,
      builder: (context, state) {
        return const CheckkoutHotel();
      },
    ),
    GoRoute(
      path: RoutesName.contactDetails.addSlash,
      name: RoutesName.contactDetails,
      builder: (context, state) {
        return const ContactDetails();
      },
    ),
    GoRoute(
      path: RoutesName.facilitiesFlight.addSlash,
      name: RoutesName.facilitiesFlight,
      builder: (context, state) {
        return const FacilitiesFlight();
      },
    ),
    GoRoute(
      path: RoutesName.propertyType.addSlash,
      name: RoutesName.propertyType,
      builder: (context, state) {
        return const PropertyType();
      },
    ),
    GoRoute(
      path: RoutesName.sortByflight.addSlash,
      name: RoutesName.sortByflight,
      builder: (context, state) {
        return const SortByflight();
      },
    ),
    GoRoute(
      path: RoutesName.sortByHotel.addSlash,
      name: RoutesName.sortByHotel,
      builder: (context, state) {
        return const SortByHotel();
      },
    ),
    GoRoute(
      path: RoutesName.flightAndHotelThreeWidget.addSlash,
      name: RoutesName.flightAndHotelThreeWidget,
      builder: (context, state) {
        return const FlightAndHotelThreeWidget();
      },
    ),
    GoRoute(
      path: RoutesName.flightAndHotel.addSlash,
      name: RoutesName.flightAndHotel,
      builder: (context, state) {
        return const FlightAndHotel();
      },
    ),
    GoRoute(
      path: RoutesName.hotelPicture.addSlash,
      name: RoutesName.hotelPicture,
      builder: (context, state) {
        return const HotelPicture();
      },
    ),
    GoRoute(
      path: RoutesName.promoCode.addSlash,
      name: RoutesName.promoCode,
      builder: (context, state) {
        return const PromoCode();
      },
    ),
    GoRoute(
      path: RoutesName.resultFlight.addSlash,
      name: RoutesName.resultFlight,
      builder: (context, state) {
        return const ResultFlight();
      },
    ),
    GoRoute(
      path: RoutesName.reviewHotel.addSlash,
      name: RoutesName.reviewHotel,
      builder: (context, state) {
        return const ReviewHotel();
      },
    ),
    GoRoute(
      path: RoutesName.selectRoom.addSlash,
      name: RoutesName.selectRoom,
      builder: (context, state) {
        return const SelectRoom();
      },
    ),
    GoRoute(
      path: RoutesName.selectSeat.addSlash,
      name: RoutesName.selectSeat,
      builder: (context, state) {
        return const SelectSeat();
      },
    ),
    GoRoute(
      path: RoutesName.facilitiesHotel.addSlash,
      name: RoutesName.facilitiesHotel,
      builder: (context, state) {
        return const FacilitiesHotel();
      },
    ),
  ],
);
