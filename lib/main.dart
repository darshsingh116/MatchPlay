import 'package:matchplay/home.dart';
import 'package:matchplay/profile.dart';
import 'package:matchplay/widgets/background_curve_widget.dart';
import 'package:matchplay/widgets/cards_stack_widget.dart';
import 'package:flutter/material.dart';
import 'package:matchplay/login.dart';


void main() => runApp(signup());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: const [
            BackgroudCurveWidget(),
            CardsStackWidget(),
          ],
        ),
      ),
    );
  }
}

enum Swipe { left, right, none }
