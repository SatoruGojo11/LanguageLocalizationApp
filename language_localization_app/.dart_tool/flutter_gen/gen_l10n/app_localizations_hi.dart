import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get homePageBody => 'यह एक होम पेज है!';

  @override
  String get homePage => 'होम पेज';

  @override
  String currentDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'आज की तारीख :- $dateString';
  }
}
