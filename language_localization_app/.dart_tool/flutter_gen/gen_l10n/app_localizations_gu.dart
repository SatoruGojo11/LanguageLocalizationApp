import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get homePageBody => 'આ એક હોમ પેજ છે';

  @override
  String get homePage => 'હોમ પેજ';

  @override
  String currentDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'આજની તારીખ :- $dateString';
  }
}
