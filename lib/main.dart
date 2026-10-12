import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knusos_with_smartphone_frontend/layouts/feature/calendar/calendar_feature.dart';
import 'package:knusos_with_smartphone_frontend/layouts/feature/feature_view.dart';
import 'package:knusos_with_smartphone_frontend/constants/palette.constant.dart';
import 'package:knusos_with_smartphone_frontend/layouts/feature/resident/resident_feature.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainState();
}

class _MainState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Pretendard'),
      home: Scaffold(
        backgroundColor: Palette.white,
        body: FeatureView(features: [ResidentFeature.new, CalendarFeature.new]),
      ),
    );
  }
}
