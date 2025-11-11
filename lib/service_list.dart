import 'package:flutter/material.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  List catagories1 = [
    {
      "imag": "assets/hair-cutting.png",
      "name1": "Haircut",
    },
    {
      "imag": "assets/facial-treatment.png",
      "name1": "Facial",
    },
    {
      "imag": "assets/nail-polish.png",
      "name1": "Nails",
    },
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
      "image": "assets/Angled-wispy-bob.jpg",
      "name": "Angled, wispy bob",
      "price": 50,
      "duration": "2.5 hours",
      "description": "There are a lot of",
      "description1": "variations between v-sh...",
      "discount":"-10"
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
        backgroundColor: Colors.white,
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
      body:Column(
          children: [
            SizedBox(height: 10,),
            SizedBox(
              height: 48,
              child: ListView.builder(
                itemCount: catagories1.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  height: 48,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: index==0 ? Colors.white : Color(0xffE1F5FA),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(width: 1, color: Color(0xff156778)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      Container(
                        height: 48,
                          width: 33,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                                image: AssetImage("${catagories1[index]["imag"]}",)))
                          ),
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
            Expanded(
              child: ListView.builder(
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
                        if (index == 0)
                        Positioned(
                            bottom: 13,
                            right: 13,
                            child: Container(
                              height: 42,
                              width: 41,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                border: Border.all(color: Colors.red,width: 1)
                              ),
                              child: Icon(Icons.remove,color: Colors.red,)
                            )),
                        if (index != 0)
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
                ),
              ),
            ),
          ],
        ),

      bottomNavigationBar: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Text("Total",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
                      Text("(1 Service)",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: Colors.grey,),),
                    ],
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Text("\$40",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Color(0xff156778)),),
                      Text("\$10",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.grey,decoration: TextDecoration.lineThrough),),
                    ],
                  ),
                ],
              ),
             Container(
               height: 52,
               width: 51,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(50)),
                 border: Border.all(width: 1,color: Color(0xff156778))
               ),
               child: Icon(Icons.sms,color: Color(0xff156778),),
             ),
              Container(
                height: 54,
                width: 153,
                decoration: BoxDecoration(
                  color: Color(0xff156778),
                  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Center(child: Text("Book Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.white),)),

              )
            ],
          ),
        ),
      ),
    );
  }
}
