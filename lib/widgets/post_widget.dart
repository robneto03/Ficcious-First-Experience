import 'package:first_experience/widgets/avatar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              AvatarWidget(
                width: 42,
                height: 42,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Mike Bool',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        'Los Angeles, CA',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        Image.network(
          'http://images.tcdn.com.br/img/img_prod/503612/produto_de_teste_avaliacao_345_1_20181128112632.png',
          height: size.height / 2,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width / 3.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.chat_bubble_outline,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.send,
                      size: 30,
                      color: Colors.white,
                    ),
                    /*SvgPicture.asset(
                      'assets/images/heart.svg',
                      width: 28,
                      color: Colors.white,
                    ),
                    SvgPicture.asset(
                      'assets/images/coment.svg',
                      width: 28,
                      color: Colors.white,
                    ),
                    SvgPicture.asset(
                      'assets/images/share.svg',
                      width: 28,
                      color: Colors.white,
                    ),*/
                  ],
                ),
              ),
              Icon(
                Icons.bookmark_border,
                size: 30,
                color: Colors.white,
              ),
              /*SvgPicture.asset(
                'assets/images/save.svg',
                width: 28,
                color: Colors.white,
              ),*/
            ],
          ),
        ),
      ],
    );
  }
}
