import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get homePageBody => 'हे मुखपृष्ठ आहे|';

  @override
  String get homePage => 'मुखपृष्ठ';

  @override
  String currentDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'चालू दिनांक :- $dateString';
  }
}
