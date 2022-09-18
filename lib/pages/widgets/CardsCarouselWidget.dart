import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skyewall_project/pages/main_room.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  final List<String> imageList = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff311b70),
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            viewportFraction: 0.4),
        items: imageList
            .map((e) => InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainRoom(url: e)));
                  },
                  child: Card(
                    color: Colors.white70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Image.asset(e, fit: BoxFit.cover),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                            "Service Room",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 15),
                                          )),
                                      Expanded(
                                          flex: 0,
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white,
                                                      width: 1),
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                "\$ 12.50/1 hour",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ))),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                          flex: 0,
                                          child: Text(
                                            "District 1",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
