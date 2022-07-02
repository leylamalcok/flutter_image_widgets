import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        'https://images.pexels.com/photos/36717/amazing-animal-beautiful-beautifull.jpg?cs=srgb&dl=pexels-pixabay-36717.jpg&fm=jpg';
    String _gif = 'https://c.tenor.com/28DFFVtvNqYAAAAC/loading.gif';
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade200,
                    child: Image.asset(
                      'assets/images/tree.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade200,
                      child: CircleAvatar(
                        child: Text(
                          'L',
                          style: Theme.of(context).textTheme.headline1,
                        ), //YAZI FONTU VE RENK AYARLARI
                        backgroundImage: NetworkImage(
                            _imgUrl), //İNTERNETTEN ÇEKİLEN RESMİN URLSİ
                        backgroundColor: Colors
                            .blue, //AVATARIN YANİ YUVARLAK LOGONUN ARKA PLAN RENGİ
                        //radius: 100, LOGONUN YARI ÇAPI
                      )),
                )
              ],
            ),
          ),
          FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif', image: _imgUrl),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Placeholder(
                    color: Colors.red,
                  )))
        ],
      ),
    );
  }
}
