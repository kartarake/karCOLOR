import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:karcolor/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFBFFF00),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),

        elevation: 1,

        child: SvgPicture.asset(
          "assets/icons/material-symbols--add.svg"
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/generator");
        }
      ),
    );
  }
}