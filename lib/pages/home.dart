import 'package:flutter/material.dart';
import 'package:skyewall_project/pages/draw.dart';
import 'package:skyewall_project/pages/widgets/CardsCarouselWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff311b70),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180.0),
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff4527a0),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hi ",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("Josh, ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text("you're at",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.add_location_outlined,
                                color: Colors.white,
                              ),
                              Text(
                                "Ho Chi Minh, Viet Nam ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      CircleAvatar(
                        foregroundImage: AssetImage("assets/avatar.png"),
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: TextFormField(
                            cursorHeight: 20,
                            style: TextStyle(fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.red,
                              ),
                              errorStyle: TextStyle(height: 0),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Looking for room",
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .focusColor
                                          .withOpacity(0.2))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .focusColor
                                          .withOpacity(0.5))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .focusColor
                                          .withOpacity(0.2))),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Flexible(
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(
                                Icons.filter_list_outlined,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 26,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xff311b70),
            ),
            child: Column(
              children: [
                CustomPaint(
                  painter: AppBarPainter(),
                  child: Container(height: 0),
                ),
                CustomPaint(
                  painter: AppBarPainterTwo(),
                  child: Container(height: 0),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Container(
                    height: 40,
        
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[600],
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                                child:  Center(child: Text("All",style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                        Expanded(child: Center(child: Text("Stay",style: TextStyle(color: Colors.white)))),
                        Expanded(child: Center(child: Text("Office",style: TextStyle(color: Colors.white))))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                SliderWidget(),

              ],
            ),
          )
        ],
      ),
    );
  }
}
