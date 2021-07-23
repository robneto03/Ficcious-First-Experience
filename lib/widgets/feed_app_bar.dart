import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedAppBar extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 120,
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.white,
              ),
            ),
            Container(
              width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/images/add.svg',
                    width: 24,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/heart.svg',
                        width: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/images/share.svg',
                      width: 24, color: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget get child => throw UnimplementedError();
}
