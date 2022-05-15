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

  /// `I'm tech lead and senior developer with over 10 years of experience in back-end and 7 years with mobile, programming since I was 16 years old. I have extensive experience in analysis, system development and application creation using the best technologies. I worked as a fullstack in several technologies and currently working with react native on a platform with millions of unique users.`
  String get aboutMe {
    return Intl.message(
      'I\'m tech lead and senior developer with over 10 years of experience in back-end and 7 years with mobile, programming since I was 16 years old. I have extensive experience in analysis, system development and application creation using the best technologies. I worked as a fullstack in several technologies and currently working with react native on a platform with millions of unique users.',
      name: 'aboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Hard skills`
  String get myTechnicalSkillsSection {
    return Intl.message(
      'Hard skills',
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

  /// `About me`
  String get contact {
    return Intl.message(
      'About me',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `\n\n Dasa is a large multinacional company in the health area, there i perform a role in development, maintenance and elaboration of the App Nav Patients structure consists of an integrated platform involving online consulting consults by stream, vaccines and diagnosis.\n\n I work in front of the exam results squad (greater flow of users), together with multidisciplinary teams of developers, products and customers, bringing new ideas and supporting scrum ceremonies, technical performance and problem solving processes. \n\n I help and follow up on App's development, developing new functions and improving user experience, as well as also assisting team with mentories and collaboration with other developers.`
  String get descriptionDasa {
    return Intl.message(
      '\n\n Dasa is a large multinacional company in the health area, there i perform a role in development, maintenance and elaboration of the App Nav Patients structure consists of an integrated platform involving online consulting consults by stream, vaccines and diagnosis.\n\n I work in front of the exam results squad (greater flow of users), together with multidisciplinary teams of developers, products and customers, bringing new ideas and supporting scrum ceremonies, technical performance and problem solving processes. \n\n I help and follow up on App\'s development, developing new functions and improving user experience, as well as also assisting team with mentories and collaboration with other developers.',
      name: 'descriptionDasa',
      desc: '',
      args: [],
    );
  }

  /// `\n\n At Dextra i worked on Dasa playing the role of Dev. React Native, later i was acquired by Dasa.`
  String get descriptionDextra {
    return Intl.message(
      '\n\n At Dextra i worked on Dasa playing the role of Dev. React Native, later i was acquired by Dasa.',
      name: 'descriptionDextra',
      desc: '',
      args: [],
    );
  }

  /// `\n\n Join is a software development company, which i was allocated to work in the Port of Santos system, transforming the system to legacy to a new web system, despite the short time i got greatting results and knowledge agregates.`
  String get descriptionJoin {
    return Intl.message(
      '\n\n Join is a software development company, which i was allocated to work in the Port of Santos system, transforming the system to legacy to a new web system, despite the short time i got greatting results and knowledge agregates.',
      name: 'descriptionJoin',
      desc: '',
      args: [],
    );
  }

  /// `\n\n Bredi is a software factory on demand that works with many projects and clients, for a long time i was been responsible for many customer projects and mobile initiative on company (i was a precursor there). Besides i worked to make complete applications (back-end up until front-end), building of API's, websites, e-commerces and many types of mobile applications (deliverys, shops, sales and etc...)`
  String get descriptionBredi {
    return Intl.message(
      '\n\n Bredi is a software factory on demand that works with many projects and clients, for a long time i was been responsible for many customer projects and mobile initiative on company (i was a precursor there). Besides i worked to make complete applications (back-end up until front-end), building of API\'s, websites, e-commerces and many types of mobile applications (deliverys, shops, sales and etc...)',
      name: 'descriptionBredi',
      desc: '',
      args: [],
    );
  }

  /// `\n\n InfoPublic was my first job, it was a company that worked for local public companies. I was responsible been for the migration of many public projects to the web.`
  String get descriptionInfoPublic {
    return Intl.message(
      '\n\n InfoPublic was my first job, it was a company that worked for local public companies. I was responsible been for the migration of many public projects to the web.',
      name: 'descriptionInfoPublic',
      desc: '',
      args: [],
    );
  }

  /// `aug 2021 - current`
  String get rangeDasa {
    return Intl.message(
      'aug 2021 - current',
      name: 'rangeDasa',
      desc: '',
      args: [],
    );
  }

  /// `jun 2021 - aug 2021`
  String get rangeDextra {
    return Intl.message(
      'jun 2021 - aug 2021',
      name: 'rangeDextra',
      desc: '',
      args: [],
    );
  }

  /// `feb 2021 - apr 2021`
  String get rangeJoin {
    return Intl.message(
      'feb 2021 - apr 2021',
      name: 'rangeJoin',
      desc: '',
      args: [],
    );
  }

  /// `mar 2013 - feb 2021`
  String get rangeBredi {
    return Intl.message(
      'mar 2013 - feb 2021',
      name: 'rangeBredi',
      desc: '',
      args: [],
    );
  }

  /// `mar 2011 - feb 2013`
  String get rangeInfoPublic {
    return Intl.message(
      'mar 2011 - feb 2013',
      name: 'rangeInfoPublic',
      desc: '',
      args: [],
    );
  }

  /// `Good comunication`
  String get softSCommunication {
    return Intl.message(
      'Good comunication',
      name: 'softSCommunication',
      desc: '',
      args: [],
    );
  }

  /// `Resilience, tolerance and flexibility`
  String get softSTolerance {
    return Intl.message(
      'Resilience, tolerance and flexibility',
      name: 'softSTolerance',
      desc: '',
      args: [],
    );
  }

  /// `Complex Problem Solving`
  String get softSResolution {
    return Intl.message(
      'Complex Problem Solving',
      name: 'softSResolution',
      desc: '',
      args: [],
    );
  }

  /// `Critical Thinking`
  String get softSMind {
    return Intl.message(
      'Critical Thinking',
      name: 'softSMind',
      desc: '',
      args: [],
    );
  }

  /// `Creativity`
  String get softSCreativity {
    return Intl.message(
      'Creativity',
      name: 'softSCreativity',
      desc: '',
      args: [],
    );
  }

  /// `Active learning`
  String get softSLearning {
    return Intl.message(
      'Active learning',
      name: 'softSLearning',
      desc: '',
      args: [],
    );
  }

  /// `Technical`
  String get technical {
    return Intl.message(
      'Technical',
      name: 'technical',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
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
