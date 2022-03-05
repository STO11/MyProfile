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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `My Profile`
  String get title {
    return Intl.message(
      'My Profile',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `I'm a senior PHP developer with over 10 years of experience in back-end and 7 years with mobile, programming since I was 16 years old. I have extensive experience in analysis, system development and application creation using the best technologies. I worked as a fullstack in several technologies and currently working with react native on a platform with millions of unique users.`
  String get aboutMe {
    return Intl.message(
      'I\'m a senior PHP developer with over 10 years of experience in back-end and 7 years with mobile, programming since I was 16 years old. I have extensive experience in analysis, system development and application creation using the best technologies. I worked as a fullstack in several technologies and currently working with react native on a platform with millions of unique users.',
      name: 'aboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Technical Skills`
  String get myTechnicalSkillsSection {
    return Intl.message(
      'Technical Skills',
      name: 'myTechnicalSkillsSection',
      desc: '',
      args: [],
    );
  }

  /// `Experiences`
  String get myExperiences {
    return Intl.message(
      'Experiences',
      name: 'myExperiences',
      desc: '',
      args: [],
    );
  }

  /// `Soft skills`
  String get softSkills {
    return Intl.message(
      'Soft skills',
      name: 'softSkills',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
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
