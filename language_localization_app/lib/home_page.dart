import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:language_localization_app/flavor_banner.dart';
import 'package:language_localization_app/flavor_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String locale = 'en';
  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      bannerConfig: BannerConfig(
        bannerName: FlavorConfig.instance.flavor.toString(),
        bannerColor: FlavorConfig.instance.color,
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Localizations.override(
            context: context,
            locale: Locale(locale),
            child: Builder(
              builder: (BuildContext context) {
                return Text(
                  AppLocalizations.of(context).homePage,
                );
              },
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Localizations.override(
                context: context,
                locale: Locale(locale),
                child: Builder(
                  builder: (BuildContext context) {
                    return Center(
                      child: Text(
                        AppLocalizations.of(context).homePageBody,
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Localizations.override(
                context: context,
                locale: Locale(locale),
                child: Builder(
                  builder: (BuildContext context) {
                    return Center(
                      child: Text(
                        AppLocalizations.of(context)
                            .currentDate(DateTime.now()),
                      ),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    locale = 'en';
                  });
                },
                child: const Text('English')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    locale = 'gu';
                  });
                },
                child: const Text('Gujarati')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    locale = 'hi';
                  });
                },
                child: const Text('Hindi')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    locale = 'mr';
                  });
                },
                child: const Text('Marathi')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    locale = 'ar';
                  });
                },
                child: const Text('Arabic')),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                'This app is in ${FlavorConfig.instance.flavor}',
                style: TextStyle(
                  color: FlavorConfig.instance.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
