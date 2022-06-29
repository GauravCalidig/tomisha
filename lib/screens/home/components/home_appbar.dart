import 'package:flutter/material.dart';
import 'package:flutter_application_1/meta/widgets/box.dart';

import '../../../meta/utils/ts.dart';

class HomeAppbar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 30,
      titleSpacing: 0,
      backgroundColor: Colors.white,
      title: Container(
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.white,
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
            const HBox(15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(60, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      alignment: Alignment.center),
                  child: Text(
                    "Login",
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

  @override
  Size get preferredSize => AppBar().preferredSize;
}
