import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/pages/basket/basket_page.dart';
import 'package:shop/pages/catalog/catalog_page.dart';
import 'package:shop/pages/discounts/discounts_page.dart';
import 'package:shop/pages/favorites/favorites_page.dart';
import 'package:shop/pages/main/main_page.dart';
import 'package:shop/pages/profile/profile_page.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: MainPage, initial: true, children: [
      AutoRoute(page: CatalogPage, path: 'catalog', initial: true),
      AutoRoute(page: DiscountsPage, path: 'discounts'),
      AutoRoute(page: BasketPage, path: 'basket'),
      AutoRoute(page: FavoritesPage, path: 'favorites'),
      AutoRoute(page: ProfilePage, path: 'profile'),
    ]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
