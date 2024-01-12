import 'package:trast/presentation/splash_screen/splash_screen.dart';
import 'package:trast/presentation/splash_screen/binding/splash_binding.dart';
import 'package:trast/presentation/welcome_screen/welcome_screen.dart';
import 'package:trast/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:trast/presentation/register_screen/register_screen.dart';
import 'package:trast/presentation/register_screen/binding/register_binding.dart';
import 'package:trast/presentation/login_screen/login_screen.dart';
import 'package:trast/presentation/login_screen/binding/login_binding.dart';
import 'package:trast/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:trast/presentation/dashboard_container_screen/binding/dashboard_container_binding.dart';
import 'package:trast/presentation/search_screen/search_screen.dart';
import 'package:trast/presentation/search_screen/binding/search_binding.dart';
import 'package:trast/presentation/item_detail_screen/item_detail_screen.dart';
import 'package:trast/presentation/item_detail_screen/binding/item_detail_binding.dart';
import 'package:trast/presentation/cart_screen/cart_screen.dart';
import 'package:trast/presentation/cart_screen/binding/cart_binding.dart';
import 'package:trast/presentation/checkout_screen/checkout_screen.dart';
import 'package:trast/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:trast/presentation/donate_one_screen/donate_one_screen.dart';
import 'package:trast/presentation/donate_one_screen/binding/donate_one_binding.dart';
import 'package:trast/presentation/sidebar_screen/sidebar_screen.dart';
import 'package:trast/presentation/sidebar_screen/binding/sidebar_binding.dart';
import 'package:trast/presentation/profil_screen/profil_screen.dart';
import 'package:trast/presentation/profil_screen/binding/profil_binding.dart';
import 'package:trast/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:trast/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:trast/presentation/history_tab_container_screen/history_tab_container_screen.dart';
import 'package:trast/presentation/history_tab_container_screen/binding/history_tab_container_binding.dart';
import 'package:trast/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:trast/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String registerScreen = '/register_screen';

  static const String loginScreen = '/login_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String searchScreen = '/search_screen';

  static const String itemDetailScreen = '/item_detail_screen';

  static const String cartScreen = '/cart_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String donatePage = '/donate_page';

  static const String donateOneScreen = '/donate_one_screen';

  static const String notificationPage = '/notification_page';

  static const String sidebarScreen = '/sidebar_screen';

  static const String profilScreen = '/profil_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String historyPage = '/history_page';

  static const String historyTabContainerScreen =
      '/history_tab_container_screen';

  static const String historytwoPage = '/historytwo_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: dashboardContainerScreen,
      page: () => DashboardContainerScreen(),
      bindings: [
        DashboardContainerBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: itemDetailScreen,
      page: () => ItemDetailScreen(),
      bindings: [
        ItemDetailBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: donateOneScreen,
      page: () => DonateOneScreen(),
      bindings: [
        DonateOneBinding(),
      ],
    ),
    GetPage(
      name: sidebarScreen,
      page: () => SidebarScreen(),
      bindings: [
        SidebarBinding(),
      ],
    ),
    GetPage(
      name: profilScreen,
      page: () => ProfilScreen(),
      bindings: [
        ProfilBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: historyTabContainerScreen,
      page: () => HistoryTabContainerScreen(),
      bindings: [
        HistoryTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
