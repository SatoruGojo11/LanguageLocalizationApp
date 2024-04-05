import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get homePageBody => 'هذه هي الصفحة الرئيسية';

  @override
  String get homePage => 'الصفحة الرئيسية';

  @override
  String currentDate(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'التاريخ الحالي :- $dateString';
  }
}
