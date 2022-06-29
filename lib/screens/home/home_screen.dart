// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, unnecessary_new, camel_case_types, sized_box_for_whitespace, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/meta/utils/responsive.dart';
import 'package:flutter_application_1/meta/utils/ts.dart';
import 'package:flutter_application_1/screens/home/components/mobile_view.dart';

import 'components/desktop_view.dart';
import 'components/home_appbar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  PageController _pageController = PageController();

  int index = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, viewportFraction: 0.55)
      ..addListener(() => setState(() => index = _pageController.page!.round()));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            extendBodyBehindAppBar: true,
            appBar: HomeAppbar(),
            bottomNavigationBar: _wBottomBar(context),
            body: Responsive(
              desktop: HomeDesktopView(index: index, onPageChange: (e) => setState(() => index = e)),
              tablet: HomeDesktopView(index: index, onPageChange: (e) => setState(() => index = e)),
              mobile: HomeMobileView(controller: _pageController, index: index),
            )));
  }

  Widget? _wBottomBar(BuildContext context) {
    if (!Responsive.isMobile(context)) return null;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 3,
          ),
        ],
      ),
      child: InkWell(
        child: Card(
          margin: EdgeInsets.all(0),
          borderOnForeground: false,
          elevation: 6,
          shadowColor: Colors.black,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          )),
          child: Container(
            margin: EdgeInsets.only(top: 22, bottom: 22, left: 20, right: 20),
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: Text("Kostenlos Registrieren", style: Ts.semiBold14(color: Color(0xFFE6FFFA))),
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff319795),
                      Color(0xff3182CE),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
