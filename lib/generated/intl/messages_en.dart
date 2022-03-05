// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutMe": MessageLookupByLibrary.simpleMessage(
            "I\'m a senior PHP developer with over 10 years of experience in back-end and 7 years with mobile, programming since I was 16 years old. I have extensive experience in analysis, system development and application creation using the best technologies. I worked as a fullstack in several technologies and currently working with react native on a platform with millions of unique users."),
        "myExperiences": MessageLookupByLibrary.simpleMessage("Experiences"),
        "myTechnicalSkillsSection":
            MessageLookupByLibrary.simpleMessage("Technical Skills"),
        "softSkills": MessageLookupByLibrary.simpleMessage("Soft skills"),
        "title": MessageLookupByLibrary.simpleMessage("My Profile")
      };
}
