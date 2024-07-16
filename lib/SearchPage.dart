import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List searchImageList = [
    "search1",
    "search2",
    "search2",
    "search1",
    "search1",
    "search2",
    "search2",
    "search1",
    "search1",
    "search2",
    "search2",
    "search1"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Persian Tabriz",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "10,000 results",
                        style: TextStyle(
                          color: Color(0xFFABABAB),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_vintage,
                          color: Color(0xFFAFA9A9),
                        ),
                        Text(
                          "Filters",
                          style: TextStyle(
                            color: Color(0xFFAFA9A9),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: (0.7),
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 5.0),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(5),
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(17),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  "images/" + searchImageList[index] + ".png",
                                ),
                              ),
                              Text(
                                "Persian Tabriz",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                "₹ 12,999",
                                style: TextStyle(
                                    color: Color(0xFFABABAB),
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "151x102 cm",
                                    style: TextStyle(
                                      color: Color(0xFFABABAB),
                                    ),
                                  ),
                                  Icon(Icons.favorite_border)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
