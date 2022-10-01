import 'package:flutter/material.dart';
import 'package:skyewall_project/pages/widgets/blue_vibe_room.dart';
import 'package:skyewall_project/pages/widgets/draw.dart';
import 'package:skyewall_project/pages/widgets/CardsCarouselWidget.dart';
import 'package:skyewall_project/pages/widgets/scroll_rooms.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flag_one = true;
  bool flag_two = false;
  bool flag_three = false;
  bool flag_four = false;
  bool flagg_one = true;
  bool flagg_two = false;
  bool flagg_three = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(

              selectedItemColor: Colors.white ,

              unselectedItemColor: Colors.black,
              backgroundColor: Colors.blueGrey[600],
              showSelectedLabels: false,
              showUnselectedLabels: false,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Container(
                    width: 56,
                    height: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:Colors.white.withOpacity(0.5)
                    ),
                    child: Icon(Icons.home),
                  ),
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 56,
                      height: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:Colors.white.withOpacity(0.5)
                      ),
                      child: Icon(Icons.mail),
                    ),
                    icon: Icon(Icons.mail,color: Colors.white,),label: "Mail"),

                BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 56,
                      height: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:Colors.white.withOpacity(0.5)
                      ),
                      child: Icon(Icons.favorite),
                    ),
                    icon: Icon(Icons.favorite,color: Colors.white), label: "Fav"),
                BottomNavigationBarItem(
                    activeIcon: Container(
                      width: 56,
                      height: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:Colors.white.withOpacity(0.5)
                      ),
                      child: Icon(Icons.shopping_cart),
                    ),
                    icon: Icon(Icons.shopping_cart,color: Colors.white), label: "Cart")
              ]),
        ),
      ),
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
                  SizedBox(
                    height: 10,
                  ),
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
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)),
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
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[600],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                flagg_one = true;
                                flagg_two = false;
                                flagg_three = false;
                              });
                            },
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: flagg_one == true
                                      ? Colors.blue[900]
                                      : Colors.blueGrey[600],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "All",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                flagg_one = false;
                                flagg_two = true;
                                flagg_three = false;
                              });
                            },
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: flagg_two == true
                                      ? Colors.blue[900]
                                      : Colors.blueGrey[600],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Stay",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                flagg_one = false;
                                flagg_two = false;
                                flagg_three = true;
                              });
                            },
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                  color: flagg_three == true
                                      ? Colors.blue[900]
                                      : Colors.blueGrey[600],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Office",
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SliderWidget(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Picked for you",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag_one = true;
                            flag_two = false;
                            flag_three = false;
                            flag_four = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: flag_one == true
                                ? Colors.blue[900]
                                : Colors.blueGrey[600],
                          ),
                          height: 76,
                          width: 150,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("assets/service.jpg"),
                                ),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Service Room",
                                  style: TextStyle(
                                      color: flag_one == true
                                          ? Colors.white
                                          : Colors.white.withOpacity(0.5)),
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag_one = false;
                            flag_two = true;
                            flag_three = false;
                            flag_four = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: flag_two == true
                                  ? Colors.blue[900]
                                  : Colors.blueGrey[600],
                            ),
                            height: 76,
                            width: 150,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset("assets/service.jpg"),
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Duplex Room",
                                    style: TextStyle(
                                        color: flag_two == true
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.5)),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag_one = false;
                            flag_two = false;
                            flag_three = true;
                            flag_four = false;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: flag_three == true
                                  ? Colors.blue[900]
                                  : Colors.blueGrey[600],
                            ),
                            height: 76,
                            width: 150,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset("assets/service.jpg"),
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Service Room",
                                    style: TextStyle(
                                        color: flag_three == true
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.5)),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            flag_one = false;
                            flag_two = false;
                            flag_three = false;
                            flag_four = true;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: flag_four == true
                                  ? Colors.blue[900]
                                  : Colors.blueGrey[600],
                            ),
                            height: 76,
                            width: 150,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset("assets/service.jpg"),
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Duplex Room",
                                    style: TextStyle(
                                        color: flag_four == true
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.5)),
                                  ),
                                ))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ScrollRooms(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Near to you",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Rooms()
              ],
            ),
          )
        ],
      ),
    );
  }
}
