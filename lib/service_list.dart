import 'package:flutter/material.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        centerTitle: true,
        title: Text("Service Manu",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black),),
      ),
    );
  }
}
