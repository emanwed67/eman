import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tourism_app/features/svscreen/bage2.dart';
import 'package:tourism_app/generated/l10n.dart';

class fa_lan extends StatefulWidget {
  const fa_lan({super.key});

  @override
  State<fa_lan> createState() => _fa_lanState();
}

class _fa_lanState extends State<fa_lan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale("fa"),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: bage2(),
    );
  }
}
