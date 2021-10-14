import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

final List<String> imgList = [
  'assets/images/resize20/02.jpg',
  'assets/images/resize20/11.jpg',
  'assets/images/resize20/17.jpg',
  'assets/images/resize20/19.jpg',
  'assets/images/resize20/22.jpg',
  'assets/images/resize20/23.jpg',
  'assets/images/resize20/21.jpg',
  'assets/images/resize20/29.jpg',
  'assets/images/resize20/27.jpg',
  'assets/images/resize20/34.jpg',
  'assets/images/resize20/30.jpg',
  'assets/images/resize20/33-1.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    PinchZoom(
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://mina-wonhee.github.io/wedding-card/assets/' +
                                item,
                        fit: BoxFit.cover,
                        width: 1000,
                        placeholder: (context, url) => Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: new CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    // Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ),
        ))
    .toList();

class AlbumWidget extends StatefulWidget {
  @override
  _AlbumWidgetState createState() => _AlbumWidgetState();
}

class _AlbumWidgetState extends State<AlbumWidget> {
  final CarouselController _controller = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              // autoPlay: true,
              aspectRatio: 0.9,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
