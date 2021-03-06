import 'package:flutter/material.dart';
import 'package:hackviolet_submission/main.dart';
import 'package:hackviolet_submission/models/women_sc_quiz.dart';
import 'package:hackviolet_submission/screens/home_page.dart';
import 'package:hackviolet_submission/screens/women_sc_page.dart';
import 'package:hackviolet_submission/screens/womensc/women_sc_answer_page.dart';
import 'package:hackviolet_submission/screens/womensc/women_sc_quiz_page.dart';

class RouterGenerator {
  static Route<dynamic> generateRouteTo(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/womensc':
        return MaterialPageRoute(builder: (_) => const WomenSCPage());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [Text("ERROR wrong page route maybe")],
        ),
      ),
    );
  }
}
