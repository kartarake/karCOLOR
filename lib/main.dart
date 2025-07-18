// Flutter Imports
import 'package:flutter/material.dart';

// Page Imports
import 'package:karcolor/pages/home_page.dart';
import 'package:karcolor/pages/search_page.dart';
import 'package:karcolor/pages/generator_page.dart';

// Theme Imports
import 'package:karcolor/themes/dark_theme.dart';

// Package Imports
import 'package:flutter_svg/flutter_svg.dart';


// The main call function.
void main() {
  runApp(const App());
}


InkWell buildAppBarButton(
  BuildContext context,
  String iconPath,
  String navigateTo
) {
  return InkWell(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SvgPicture.asset(
        iconPath,
        width: 24,
        colorFilter: ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
      ),
    ),
    onTap: () => Navigator.pushNamed(context, navigateTo),
  );
}


AppBar customAppBar(BuildContext context) {
  return AppBar(
    leading: buildAppBarButton(
      context,
      "assets/icons/material-symbols--home-outline.svg",
      "/"
    ),

    actions: [
      buildAppBarButton(
        context,
        "assets/icons/material-symbols--search.svg",
        "/search"
      ),
    ],
  );
}


// The main app class
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'karCOLOR',

      debugShowCheckedModeBanner: false,

      darkTheme: darkTheme,

      routes: {
        "/": (context) => HomePage(),
        "/search": (context) => SearchPage(),
        "/generator": (context) => GeneratorPage(),
      },
      initialRoute: "/",
    );
  }
}