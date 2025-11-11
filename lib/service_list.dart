import 'package:flutter/material.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  List catagories1 = [
    {"name1": "Haircut"},
    {"name1": "Facial"},
    {"name1": "Nails"},
  ];
  List catagories = [
    {
      "image": "assets/women blunt.png",
      "name": "Woman Blunt Cut",
      "price": 50,
      "duration": "2 hours",
      "description": "A blunt cut bob is a",
      "description1": "shorter hairstyle that's c...",
      "discount":"-20"
    },
    {
      "image": "assets/bob.png",
      "name": "Bob/ Lob Cut",
      "price": 55,
      "duration": "1.5 hours",
      "description": "Lob haircut is a women's",
      "description1": "hairstyle that is cut som...",
      "discount":"-20"
    },
    {
      "image": "assets/medium.png",
      "name": "Medium Length Layer Cut",
      "price": 80,
      "duration": "1 hour",
      "description": "Layered hair is a hairstyle",
      "description1": "that gives the illusion of...",
    },
    {
      "image": "assets/v_shaped.png",
      "name": "V-Shaped Cut",
      "price": 90,
      "duration": "2.5 hours",
      "description": "There are a lot of",
      "description1": "variations between v-sh...",
      "discount":"-20"
    },
    {
      "image": "assets/v_shaped.png",
      "name": "V-Shaped Cut",
      "price": 90,
      "duration": "2.5 hours",
      "description": "There are a lot of",
      "description1": "variations between v-sh...",
      "discount":"-10"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        centerTitle: true,
        title: Text(
          "Service Manu",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Colors.grey),
            SizedBox(
              height: 48,
              child: ListView.builder(
                itemCount: catagories1.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  height: 48,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(width: 1, color: Color(0xff156778)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      Icon(Icons.person),
                      Text(
                        "${catagories1[index]["name1"]}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff156778),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            ListView.builder(
              itemCount: catagories.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 115,
                        width: 343,
                        // color: Colors.white,
                        child: Row(
                          spacing: 25,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 114,
                                width: 114,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    topRight: Radius.circular(3),
                                    bottomRight: Radius.circular(3),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "${catagories[index]["image"]}",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 15),
                                  Text(
                                    "${catagories[index]["name"]}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color(0xff000000)
                                    ),
                                  ),
                                  Row(
                                    spacing: 5,
                                    children: [
                                      Text("\$${catagories[index]["price"]}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff156778)),),
                                      CircleAvatar(
                                        radius: 2,
                                        backgroundColor: Colors.grey,
                                      ),
                                      Text("${catagories[index]["duration"]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                                    ],
                                  ),
                                  Text(
                                    "${catagories[index]["description"]}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.grey
                                    ),
                                  ),
                                  Text(
                                    "${catagories[index]["description1"]}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.grey
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 13,
                          right: 13,
                          child: CircleAvatar(
                            backgroundColor:Color(0xff156778),
                            child: Icon(Icons.add,color: Colors.white,),
                          )),
                      if (index != 2)
                      Positioned(
                          top: 13,
                          right: 13,
                          child:Container(
                            height: 24,
                            width: 67,
                            decoration: BoxDecoration(
                              color: Color(0xffFFF9E5),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 5,
                              children: [
                                Icon(Icons.sell,size: 18,color: Colors.orange,),
                                Text("${catagories[index]["discount"]}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.orange),)
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                // child: Container(
                //   margin: EdgeInsets.symmetric(vertical: 5),
                //   height: 145,
                //   width: 343,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //       borderRadius: BorderRadius.all(Radius.circular(8)),
                //     boxShadow: [
                //       BoxShadow(
                //         blurRadius: 1
                //       )
                //     ],
                //   ),
                //   // child: Row(
                //   //   mainAxisSize: MainAxisSize.min,
                //   //   spacing: 8,
                //   //   children: [
                //   //     Icon(Icons.person),
                //   //     Text("Hair Cut")
                //   //   ],
                //   // ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
