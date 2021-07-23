import 'package:first_experience/widgets/avatar_widget.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              15,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  children: [
                    AvatarWidget(
                      width: size.width / 5.3,
                      height: size.width / 5.3,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 70,
                      child: Text(
                        'namecomes here',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
