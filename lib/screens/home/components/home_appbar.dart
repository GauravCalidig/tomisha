import 'package:flutter/material.dart';

import '../../../meta/utils/ts.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 6,
      titleSpacing: 0,
      backgroundColor: Colors.white,
      title: Container(
        decoration: const BoxDecoration(
          // color: Colors.transparent,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        height: 70,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff319795),
                  Color(0xff3182CE),
                ]),
              ),
              height: 12,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "  Login    ",
                    style: Ts.semiBold14(color: const Color(0xff319795)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      )),
    );
  }
}
