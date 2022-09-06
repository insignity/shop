import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/routing/router.dart';
import 'package:shop/utilities/extensions/context_shortcuts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int homeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      homeIndex: homeIndex,
      routes: [
        const CatalogRoute(),
        const DiscountsRoute(),
        const BasketRoute(),
        const FavoritesRoute(),
        ProfileRoute(string: 'string')
      ],
      builder: (context, child, __){
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: context.tabsRouter.activeIndex,
            onTap: (i) => context.tabsRouter.setActiveIndex(i),
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.newspaper),
                label: context.$.Catalog,
              ), BottomNavigationBarItem(
                icon: const Icon(Icons.percent),
                label: context.$.Sales,
              ), BottomNavigationBarItem(
                icon: const Icon(Icons.shopping_basket),
                label: context.$.Basket,
              ), BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
                label: context.$.Favorites,
              ), BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: context.$.Profile,
              ),
            ],
          ),
        );
      },
    );
  }
}
