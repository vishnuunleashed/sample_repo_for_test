import 'package:flutter/material.dart';
import 'package:skyewall_project/pages/draw_two.dart';

class MainRoom extends StatefulWidget {
  final String url;

  const MainRoom({
    required this.url,
  });

  @override
  State<MainRoom> createState() => _MainRoomState();
}

class _MainRoomState extends State<MainRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height:56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff311b70)
            ),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Icon(Icons.favorite_border_outlined,color: Colors.white,)),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff4527a0),
                    ),
                    child: Center(child: Text("Book Now",style: TextStyle(color: Colors.white),)),
                  ),
                ),
              )
            ],
          ),
     ),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("Room"),
        backgroundColor: Color(0xff311b70),
        leading: Center(
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                  size: 20,
                )),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height+20,
            decoration: const BoxDecoration(
              color: Color(0xff311b70),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(widget.url, fit: BoxFit.cover)),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 100, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        padding: const EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.white, width: 1),
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          "\$ 12.50/1 hour",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ))),
                                Expanded(child: Text("")),
                                Expanded(
                                    flex: 0,
                                    child: Icon(
                                      Icons.square_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.blue[800], shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey, shape: BoxShape.circle),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Icon(
                        Icons.add_location_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "23 Sun View Rd, Little Town, Ca, 23424",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Icon(
                        Icons.my_location_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bed_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10,),
                        Text("1",style: TextStyle(color: Colors.white))
                      ],
                    ),
                    SizedBox(width: 20,),
                    Row(
                      children: [
                        Icon(
                          Icons.bathtub_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10,),
                        Text("1",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 26,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                CustomPaint(
                  painter: AppBarPainterThree(),
                  child: Container(height: 0),
                ),
                CustomPaint(
                  painter: AppBarPainterFour(),
                  child: Container(height: 0),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                const Text("Our fancy room with minimalism decoration will make you feel like home! We have an area for cooking and a cafe shop at ground floor. 24/7 security with our guards at front door will make you feel safe all the time. "),
              ],
            ),
          )
        ],
      ),
    );
  }
}
