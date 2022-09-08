import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shop/theming/app_themes.dart';
import 'package:shop/utilities/extensions/context_shortcuts.dart';

import 'catalog_store.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  final CatalogStore store = CatalogStore();

  @override
  void initState() {
    store.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.$.Catalog), elevation: 0),
      body: Observer(builder: (context) {
        if (store.isRunning) {
          return const Center(child: CircularProgressIndicator());
        } else if (store.hasError) {
          return Center(child: Text(store.error.toString()));
        }
        return ListView(
          children: [
            for (int i = 0; i < store.catalog.length; i++) ...[
              ListTile(
                title: Text(store.catalog.keys.toList()[i]),
                trailing: const Icon(Icons.chevron_right),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Image.network(
                            store.catalog[store.catalog.keys.toList()[i]]![0]
                                .image,
                            height: 150,
                            fit: BoxFit.fitWidth,

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(
                            store.catalog[store.catalog.keys.toList()[i]]![0]
                                .name,
                            style: context.txt.bodyText1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Image.network(
                            store.catalog[store.catalog.keys.toList()[i]]![1]
                                .image,
                              height: 150,
                              fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(
                            store.catalog[store.catalog.keys.toList()[i]]![0]
                                .name,
                            style: context.txt.bodyText1,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ],
        );
      }),
    );
  }
}
