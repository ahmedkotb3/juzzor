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

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `My Application`
  String get appTitle {
    return Intl.message('My Application', name: 'appTitle', desc: '', args: []);
  }

  /// `Welcome to My Application!`
  String get welcomeMessage {
    return Intl.message(
      'Welcome to My Application!',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred. Please try again later.`
  String get errorOccurred {
    return Intl.message(
      'An error occurred. Please try again later.',
      name: 'errorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `Videos`
  String get videos {
    return Intl.message('Videos', name: 'videos', desc: '', args: []);
  }

  /// `Play and Learn`
  String get playandlearn {
    return Intl.message(
      'Play and Learn',
      name: 'playandlearn',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Lang {
    return Intl.message('Language', name: 'Lang', desc: '', args: []);
  }

  /// `My Account`
  String get myAccount {
    return Intl.message('My Account', name: 'myAccount', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Numbers`
  String get numbers {
    return Intl.message('Numbers', name: 'numbers', desc: '', args: []);
  }

  /// `Letters`
  String get letters {
    return Intl.message('Letters', name: 'letters', desc: '', args: []);
  }

  /// `Colors`
  String get colors {
    return Intl.message('Colors', name: 'colors', desc: '', args: []);
  }

  /// `Shapes`
  String get shapes {
    return Intl.message('Shapes', name: 'shapes', desc: '', args: []);
  }

  /// `Miscellaneous`
  String get others {
    return Intl.message('Miscellaneous', name: 'others', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
