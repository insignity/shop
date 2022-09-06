// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Привет`
  String get Hello {
    return Intl.message(
      'Привет',
      name: 'Hello',
      desc: '',
      args: [],
    );
  }

  /// `мир`
  String get world {
    return Intl.message(
      'мир',
      name: 'world',
      desc: '',
      args: [],
    );
  }

  /// `Каталог`
  String get Catalog {
    return Intl.message(
      'Каталог',
      name: 'Catalog',
      desc: '',
      args: [],
    );
  }

  /// `Скидки`
  String get Sales {
    return Intl.message(
      'Скидки',
      name: 'Sales',
      desc: '',
      args: [],
    );
  }

  /// `Корзина`
  String get Basket {
    return Intl.message(
      'Корзина',
      name: 'Basket',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get Favorites {
    return Intl.message(
      'Избранное',
      name: 'Favorites',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get Profile {
    return Intl.message(
      'Профиль',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `IRCN Shop`
  String get AppBar {
    return Intl.message(
      'IRCN Shop',
      name: 'AppBar',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
