import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tourism_app/features/svscreen/bage2.dart';
import 'package:tourism_app/generated/l10n.dart';

class fa extends StatefulWidget {
  const fa({super.key});

  @override
  State<fa> createState() => _faState();
}

class _faState extends State<fa> {
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
