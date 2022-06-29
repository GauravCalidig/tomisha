import 'package:flutter/material.dart';
import 'package:flutter_application_1/meta/widgets/box.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../meta/models/home_model.dart';
import '../../../meta/utils/ts.dart';
import '../common/clippers.dart';

class HomeMobileView extends StatelessWidget {
  final PageController controller;
  final int index;
  const HomeMobileView({required this.controller, required this.index, Key? key}) : super(key: key);

  void onPageChange(int index) {
    controller.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ClipPath(
          clipper: CustomClipperContainer(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              top: 20,
            ),
            color: const Color(0xffE6FFFA),
            height: MediaQuery.of(context).size.height - 60,
            child: Column(
              children: [
                const SafeArea(child: SizedBox.shrink()),
                Text(
                  'Deine Job \nwebsite',
                  style: Ts.medium42(color: const Color(0xFF2D3748)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: LimitedBox(
                    maxWidth: 850,
                    maxHeight: 850,
                    child: SvgPicture.asset(
                      "assets/1.svg",
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.cover,
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
                child: PageView(controller: controller, children: [
                  InkWell(
                    hoverColor: const Color(0xff81E6D9).withOpacity(0.5),
                    splashColor: const Color(0xff81E6D9),
                    onTap: () => onPageChange(0),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.maxFinite,
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
                        style: Ts.semiBold14(color: index == 0 ? Colors.white : const Color(0xff319795)),
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: const Color(0xff81E6D9).withOpacity(0.5),
                    splashColor: const Color(0xff81E6D9),
                    onTap: () => onPageChange(1),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.maxFinite,
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
                        style: Ts.semiBold14(color: index == 1 ? Colors.white : const Color(0xff319795)),
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: const Color(0xff81E6D9).withOpacity(0.5),
                    splashColor: const Color(0xff81E6D9),
                    onTap: () => onPageChange(2),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.maxFinite,
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
                        style: Ts.semiBold14(color: index == 2 ? Colors.white : const Color(0xff319795)),
                      ),
                    ),
                  ),
                ]),
              ),
              const HBox(50),
              Column(
                children: [
                  Text(
                    HomeData.firstColumn[index].title as String,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4A5568),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: LimitedBox(maxHeight: 200, maxWidth: 200, child: SvgPicture.asset("assets/2.svg")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("1.",
                          style: GoogleFonts.lato(
                            fontSize: 150,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff718096),
                          )),
                      Text(HomeData.firstColumn[index].description,
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff718096),
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ClipPath(
                clipper: CustomClipperContainerTwo(),
                child: Container(
                  color: const Color(0xffE6FFFA),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("2.",
                              style: GoogleFonts.lato(
                                fontSize: 150,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff718096),
                              )),
                          Text(HomeData.secondColumn[index].description,
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff718096),
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: LimitedBox(
                            maxHeight: 200, maxWidth: 200, child: SvgPicture.asset(HomeData.secondColumn[index].image)),
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
              Column(
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("3.",
                          style: GoogleFonts.lato(
                            fontSize: 150,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff718096),
                          )),
                      Text(HomeData.thirdColumn[index].description,
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff718096),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: LimitedBox(
                        maxHeight: 200, maxWidth: 200, child: SvgPicture.asset(HomeData.thirdColumn[index].image)),
                  ),
                  const HBox(50)
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
