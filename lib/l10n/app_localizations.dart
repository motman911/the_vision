import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  String get appTitle;
  String get welcome;
  String get services;
  String get universities;
  String get aboutUs;
  String get contactUs;
  String get faq;
  String get gallery;
  String get home;
  String get mainServices;
  String get studyFeatures;
  String get livingCosts;
  String get testimonials;
  String get startJourney;
  String get applyNow;
  String get officialWebsite;
  String get viewMore;
  String get contactInfo;
  String get sendMessage;
  String get name;
  String get email;
  String get phone;
  String get message;
  String get submit;
  String get viewAll;
  String get seeMore;
  String get readMore;
  String get next;
  String get previous;
  String get loading;
  String get error;
  String get success;
  String get warning;
  String get noData;
  String get search;
  String get filter;
  String get sort;
  String get description;
  String get price;
  String get duration;
  String get requirements;
  String get process;
  String get steps;
  String get advantages;
  String get disadvantages;
  String get rating;
  String get reviews;
  String get share;
  String get save;
  String get delete;
  String get edit;
  String get create;
  String get update;
  String get cancel;
  String get confirm;
  String get accept;
  String get reject;
  String get help;
  String get support;
  String get settings;
  String get profile;
  String get logout;
  String get login;
  String get register;
  String get forgotPassword;
  String get resetPassword;
  String get changePassword;
  String get privacyPolicy;
  String get termsOfService;
  String get aboutApp;
  String get version;
  String get developedBy;
  String get allRightsReserved;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale".');
}
