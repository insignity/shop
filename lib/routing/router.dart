import 'package:auto_route/annotations.dart';
import 'package:shop/pages/main/main_page.dart';
import 'package:shop/pages/profile/profile_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: MainPage, initial: true),
    AutoRoute(page: ProfilePage),
  ],
)
class  $AppRouter {}
