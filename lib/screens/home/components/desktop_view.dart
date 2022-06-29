import 'package:flutter/material.dart';
import 'package:flutter_application_1/meta/widgets/box.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;
import 'package:google_fonts/google_fonts.dart';

import '../../../meta/models/home_model.dart';
import '../../../meta/utils/ts.dart';
import '../common/clippers.dart';

class HomeDesktopView extends StatelessWidget {
  final void Function(int) onPageChange;
  final int index;
  const HomeDesktopView({required this.onPageChange, required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xffE6FFFA),
            height: MediaQuery.of(context).size.height / 1.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SafeArea(child: SizedBox.shrink()),
                    Text(
                      'Deine Job \nwebsite',
                      style: Ts.medium60(color: const Color(0xFF2D3748)),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 77),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 80),
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff319795),
                              Color(0xff3182CE),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: const Text(
                          "Kostenlos Registrieren",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 144,
                ),
                FittedBox(
                  child: LimitedBox(
                    maxHeight: 320,
                    maxWidth: 320,
                    child: Container(
                      height: 320,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          image: svg_provider.Svg('assets/1.svg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    hoverColor: const Color(0xff81E6D9).withOpacity(0.5),
                    splashColor: const Color(0xff81E6D9),
                    onTap: () => onPageChange(0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 215,
                      height: 40,
                      decoration: BoxDecoration(
                        color: index == 0 ? const Color(0xff81E6D9) : Colors.transparent,
                        border: Border.all(
                          color: const Color(0xffCBD5E0),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Arbeitnehmer",
                        style: TextStyle(fontSize: 17, color: index == 0 ? Colors.white : const Color(0xff319795)),
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: const Color(0xff81E6D9).withOpacity(0.5),
                    splashColor: const Color(0xff81E6D9),
                    onTap: () => onPageChange(1),
                    child: Container(
                      alignment: Alignment.center,
                      width: 215,
                      height: 40,
                      decoration: BoxDecoration(
                        color: index == 1 ? const Color(0xff81E6D9) : Colors.transparent,
                        border: Border.all(
                          color: const Color(0xffCBD5E0),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        "Arbeitgeber",
                        style: TextStyle(fontSize: 17, color: index == 1 ? Colors.white : const Color(0xff319795)),
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    hoverColor: const Color(0xff81E6D9).withOpacity(0.5),
                    splashColor: const Color(0xff81E6D9),
                    onTap: () => onPageChange(2),
                    child: Container(
                      alignment: Alignment.center,
                      width: 215,
                      height: 40,
                      decoration: BoxDecoration(
                        color: index == 2 ? const Color(0xff81E6D9) : Colors.transparent,
                        border: Border.all(
                          color: const Color(0xffCBD5E0),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Temporärbüro",
                        style: TextStyle(fontSize: 17, color: index == 2 ? Colors.white : const Color(0xff319795)),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Text(HomeData.firstColumn[index].title as String,
                      textAlign: TextAlign.center, style: Ts.medium32(color: const Color(0xFF4A5568))),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: SvgPicture.asset(
                          "assets/2.svg",
                          fit: BoxFit.contain,
                          height: 300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 220.0, right: MediaQuery.of(context).size.width * 0.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("1.",
                                style: GoogleFonts.lato(
                                  fontSize: 150,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff718096),
                                )),
                            Text(HomeData.firstColumn[index].description,
                                style: Ts.semiBold19(color: const Color(0xff718096))),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const HBox(15),
              ClipPath(
                clipper: CustomClipperContainerTwo(),
                child: Container(
                  padding: const EdgeInsets.only(top: 45),
                  color: const Color(0xffE6FFFA),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const HBox(50),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: SvgPicture.asset(
                          HomeData.secondColumn[index].image,
                          height: 300,
                        ),
                      ),
                      const WBox(100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("2.",
                              style: GoogleFonts.lato(
                                fontSize: 120,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff718096),
                              )),
                          Text(HomeData.secondColumn[index].description,
                              style: Ts.semiBold19(color: const Color(0xff718096))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ClipPath(
                clipper: CustomClipperContainer(),
                child: Container(
                  height: 120,
                  color: const Color(0xffE6FFFA),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.3),
                    child: Container(
                      height: 190,
                      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1), shape: BoxShape.circle),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("3.",
                                style: GoogleFonts.lato(
                                  fontSize: 150,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff718096),
                                )),
                            Text(HomeData.thirdColumn[index].description,
                                style: Ts.semiBold19(color: const Color(0xff718096))),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 50),
                        child: SvgPicture.asset(
                          HomeData.thirdColumn[index].image,
                          height: 400,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
