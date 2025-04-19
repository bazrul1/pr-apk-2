import 'package:flutter/material.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({ Key? key }) : super(key: key);

  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Container(  

      child:(Center(child:Text("School Page",style: TextStyle(
        fontSize:35,color: const Color.fromARGB(255, 92, 97, 97),
        fontWeight: FontWeight.w500
      ),),)),

     color: const Color.fromARGB(255, 182, 229, 193),

    );
  }
}