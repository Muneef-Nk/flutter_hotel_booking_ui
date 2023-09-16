import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../model/data_model.dart';
import '../../widgets/row_text.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double value = 2.4;
  bool isFavorite=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 0,
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Current location",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.greenAccent,
                ),
                Text(
                  " wallace, Australia",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.greenAccent,
                )
              ],
            )
          ]),
          actions: [
            Stack(children: [
              Container(
                margin: EdgeInsets.only(
                  right: 15,
                  top: 5,
                  bottom: 5,
                ),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300)),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
              ),
              Positioned(
                right: 25,
                top: 14,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                ),
              )
            ])
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(03),
              width: MediaQuery.of(context).size.width * .9,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Hotel",
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              RowText(
                text: "Recommended ",
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 410,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataModel.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        width: 300,
                        // height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  spreadRadius: 2,
                                  blurRadius: 2)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Container(
                                width: double.infinity,
                                height: 270,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20))),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                  child: Image.network(
                                    dataModel[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: InkWell(
                                  onTap: () {
                                    print("clicked index $index");
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: isFavorite
                                        ? Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                        : Icon(
                                      Icons.favorite_outline,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              )
                            ]),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    dataModel[index].title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        dataModel[index].stars,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(right: 10, left: 10),
                              child: Text(
                                dataModel[index].subTitle,
                                style:
                                TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 36),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "\$${dataModel[index].rent}",
                                        style: TextStyle(
                                            color: Colors.greenAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    TextSpan(
                                        text: " /night",
                                        style: TextStyle(
                                            color:
                                            Colors.black.withOpacity(0.6),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              RowText(
                text: "Popular Destination",
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dataModel.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 2)
                      ]),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              dataModel[index].image,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  dataModel[index].title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 36),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: "\$${dataModel[index].rent}",
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: " /night",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              dataModel[index].subTitle,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Row(
                              children: [
                                SmoothStarRating(
                                    allowHalfRating: false,
                                    onRatingChanged: (v) {
                                      value = v;
                                      setState(() {});
                                    },
                                    starCount: 5,
                                    rating: value,
                                    size: 25.0,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star,
                                    color: Colors.amber,
                                    borderColor: Colors.amber,
                                    spacing: 0.0),
                                Text(
                                  "$value",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ]),
    );
  }
}

