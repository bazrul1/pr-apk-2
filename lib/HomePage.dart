import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container( 
      
      color:const Color.fromARGB(255, 241, 185, 228),
      child: Center(child: Text("Home Page",style: TextStyle(
        fontSize: 35,color:const Color.fromARGB(255, 92, 97, 97),
        fontWeight: FontWeight.w500
      ),),)
      
    );
  }
}