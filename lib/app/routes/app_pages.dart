import 'package:get/get.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/details_page/bindings/details_page_binding.dart';
import '../modules/details_page/views/details_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/privacy_policy/bindings/privacy_policy_binding.dart';
import '../modules/privacy_policy/views/privacy_policy_view.dart';
import '../modules/reate_app/bindings/reate_app_binding.dart';
import '../modules/reate_app/views/reate_app_view.dart';
import '../modules/share/bindings/share_binding.dart';
import '../modules/share/views/share_view.dart';
import '../modules/website/bindings/website_binding.dart';
import '../modules/website/views/website_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS_PAGE,
      page: () => DetailsPageView(),
      binding: DetailsPageBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY,
      page: () => const PrivacyPolicyView(),
      binding: PrivacyPolicyBinding(),
    ),
    GetPage(
      name: _Paths.SHARE,
      page: () => const ShareView(),
      binding: ShareBinding(),
    ),
    GetPage(
      name: _Paths.REATE_APP,
      page: () => const ReateAppView(),
      binding: ReateAppBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.WEBSITE,
      page: () => const WebsiteView(),
      binding: WebsiteBinding(),
    ),
  ];
}
