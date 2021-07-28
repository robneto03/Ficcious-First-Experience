import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedAppBar extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width / 3.3,
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                color: Colors.white,
              ),
            ),
            Container(
              width: size.width / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.add_box_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  Icon(
                    Icons.send,
                    size: 30,
                  ),
                  /*SvgPicture.asset(
                    'assets/images/add.svg',
                    width: 24,
                    color: Colors.white,
                  ),
                  SvgPicture.asset(
                    'assets/images/heart.svg',
                    width: 24,
                    color: Colors.white,
                  ),
                  SvgPicture.asset('assets/images/share.svg',
                      width: 24, color: Colors.white),*/
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
