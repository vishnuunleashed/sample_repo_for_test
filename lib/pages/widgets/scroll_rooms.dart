import 'package:flutter/material.dart';

class ScrollRooms extends StatelessWidget {
  const ScrollRooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                color: Color(0xff311b70),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          width: 1, color: Colors.white)),
                  color: Color(0xff311b70),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width:
                        MediaQuery.of(context).size.width / 2.2,
                        height:
                        MediaQuery.of(context).size.height / 5,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/service.jpg",
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        flex: 0,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Minimalism Room",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 15),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            padding:
                                            const EdgeInsets
                                                .all(5.0),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors
                                                        .white,
                                                    width: 1),
                                                color: Colors
                                                    .transparent,
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    10)),
                                            child: Text(
                                              "\$ 12.50/1 hour",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white,
                                                  fontSize: 10),
                                            ))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Phu Nhuan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.bed,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.hot_tub,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              "5",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                color: Color(0xff311b70),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          width: 1, color: Colors.white)),
                  color: Color(0xff311b70),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width:
                        MediaQuery.of(context).size.width / 2.2,
                        height:
                        MediaQuery.of(context).size.height / 5,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/service.jpg",
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        flex: 0,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Minimalism Room",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 15),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            padding:
                                            const EdgeInsets
                                                .all(5.0),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors
                                                        .white,
                                                    width: 1),
                                                color: Colors
                                                    .transparent,
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    10)),
                                            child: Text(
                                              "\$ 12.50/1 hour",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white,
                                                  fontSize: 10),
                                            ))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Phu Nhuan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.bed,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.hot_tub,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              "5",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                color: Color(0xff311b70),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2.8,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                          width: 1, color: Colors.white)),
                  color: Color(0xff311b70),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width:
                        MediaQuery.of(context).size.width / 2.2,
                        height:
                        MediaQuery.of(context).size.height / 5,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/service.jpg",
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        flex: 0,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Minimalism Room",
                                          style: TextStyle(
                                              fontWeight:
                                              FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 15),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                            padding:
                                            const EdgeInsets
                                                .all(5.0),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors
                                                        .white,
                                                    width: 1),
                                                color: Colors
                                                    .transparent,
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    10)),
                                            child: Text(
                                              "\$ 12.50/1 hour",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white,
                                                  fontSize: 10),
                                            ))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          "Phu Nhuan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.bed,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.hot_tub,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "1",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                    Expanded(
                                        flex: 2,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Text(
                                              "5",
                                              style: TextStyle(
                                                  color:
                                                  Colors.white),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
