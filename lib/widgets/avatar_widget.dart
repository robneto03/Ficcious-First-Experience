import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final double? height;
  final double? width;
  AvatarWidget({this.width, this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF9B2282), Color(0xFFEEA863)],
        ),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage('assets/images/default-avatar.jpg'),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
