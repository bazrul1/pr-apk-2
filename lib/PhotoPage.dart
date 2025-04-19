import 'package:flutter/material.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({ Key? key }) : super(key: key);

  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Container( 

      child: Center(child:Text("Photo Page", style: TextStyle(
        fontSize: 35,color:const Color.fromARGB(255, 92, 97, 97),
        fontWeight: FontWeight.w500
      ),),),

      color: const Color.fromARGB(255, 238, 194, 196),
    );
  }
}