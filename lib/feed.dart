import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [containerStories(), itemPost()],
        ),
      ),
    );
  }

  Widget itemPost() {
    return Column(
      children: [
        // cabeçalho
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // foto perfil
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 3,
                    color: Colors.black,
                  ),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                      'data:image/jpeg;base64,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',
                      width: 45),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Mike Bool',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Los Angeles, CA'),
                    ],
                  ),
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        // imagem do post
        Image.network(
          'http://images.tcdn.com.br/img/img_prod/503612/produto_de_teste_avaliacao_345_1_20181128112632.png',
          height: 325,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        // rodapé
        Row(
          children: [
            //Image.asset('like'),
            //Image.asset('comments'),
            //Image.asset('direct'),
            //Image.asset('saver'),
            Icon(Icons.favorite_border),
            Icon(Icons.chat_bubble_outline),
            Icon(Icons.send),
            Icon(Icons.bookmark_border),
          ],
        ),
      ],
    );
  }
}
