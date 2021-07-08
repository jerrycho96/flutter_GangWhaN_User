import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            'assets/images/icon1.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  final _img = [
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
    "assets/images/banner_img.png",
  ];
  CarouselController buttonCarouselController = CarouselController();
  int _current = 1;
  bool puase = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index + 1;
                      });
                    },
                  ),
                  items: _img.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(i, fit: BoxFit.contain),
                        );
                      },
                    );
                  }).toList(),
                ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _current < 10 ? '0$_current' : '$_current',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          _img.length < 10
                              ? '0${_img.length}'
                              : '${_img.length}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 2,
                          color: Colors.grey,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        GestureDetector(
                          child: Icon(
                            puase ? Icons.play_arrow : Icons.pause,
                            color: Colors.white,
                            size: 20,
                          ),
                          onTap: () {
                            print(puase);
                            setState(() {
                              puase = !puase;
                            });
                            // 시작
                            puase
                                ? buttonCarouselController.stopAutoPlay()
                                : buttonCarouselController.startAutoPlay();
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
