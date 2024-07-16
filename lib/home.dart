import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List collectionImage = [
    "collection_1",
    "collection_2",
    "collection_3",
    "collection_4",
    "collection_5"
  ];

  List collectionText = [
    "Modern Marvels",
    "Classic Elegance",
    "Bohemian Bliss",
    "Nature's Harmony",
    "Modern Marvels",
  ];

  List exploreImage = [
    "explore_1",
    "explore_2",
    "explore_3",
  ];

  List exploreText = [
    "Modern",
    "Classic",
    "Tribal",
  ];

  List frameImage = ["frame1", "frame2", "frame3"];

  List frameText = [
    [
      "Anchor the Space: Place the carpet under the front legs of your sofa and chairs to create a cohesive seating area.",
      "Size Matters: Ensure the carpet is large enough to fit all furniture on it or at least the front legs of major pieces.",
      "Focus Point: Choose a design that complements your furniture and acts as a focal point in the room."
    ],
    [
      "Full Coverage: The carpet should extend beyond the dining table by at least 24 inches on all sides to allow chairs to move in and out easily.",
      "Durability: Choose a durable, easy-to-clean material to handle spills and heavy foot traffic.",
      "Shape Harmony: Match the carpet shape to your table shape (rectangular for long tables, round for circular tables)."
    ],
    [
      "Anchor the Space: Place the carpet under the front legs of your sofa and chairs to create a cohesive seating area.",
      "Size Matters: Ensure the carpet is large enough to fit all furniture on it or at least the front legs of major pieces.",
      "Focus Point: Choose a design that complements your furniture and acts as a focal point in the room."
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 18),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/pattern.png"),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Choose patterns\nColors\nMaterials",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Impact'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TitleWidget("Collections"),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: collectionImage.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/" + collectionImage[index] + ".png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: Text(
                              collectionText[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TitleWidget("Recent Projects"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(200),
                        bottomRight: Radius.circular(200),
                      ),
                      child: Image.asset(
                        "images/sofa.png",
                        width: MediaQuery.of(context).size.width / 2 - 20,
                        height: 170,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 30,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            "Luxury Living Room in Manhattan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()..shader = linearGradient,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "A vibrant, multi-colored carpet featuring eclectic patterns, adding warmth and  character to a lively family gathering space.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TitleWidget("Shops To Explore"),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: exploreImage.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 180,
                        width: 210,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/" + exploreImage[index] + ".png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: Text(
                              exploreText[index],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TitleWidget("Guide for Placement"),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 450,
                        padding: EdgeInsets.only(top: 90, left: 20, right: 20),
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  "images/" + frameImage[index] + ".png"),
                              fit: BoxFit.fill),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Living Room",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Tips:",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextPointWidget(frameText[index][0]),
                            TextPointWidget(frameText[index][1]),
                            TextPointWidget(frameText[index][2]),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TextPointWidget(String textPonts) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• ", style: TextStyle(color: Colors.white)),
        Container(
          width: MediaQuery.of(context).size.width / 2 - 50,
          child: Text(
            textPonts,
            style: TextStyle(color: Colors.white, height: 1),
          ),
        ),
      ],
    );
  }

  Widget TitleWidget(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("images/underline.png"),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Color(0xFF3E0D16),
          ),
        ),
      ],
    );
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff991F35), Color(0xff330A12)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
}
