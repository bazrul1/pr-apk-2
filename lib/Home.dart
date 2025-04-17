

import 'package:flutter/material.dart';

// fstful

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



List Colorlist = [ 
          Colors.green,
          Colors.blue,
          Colors.yellow,
          Colors.pink,
          Colors.red,
];

  List ColorsNames = ["Green","Blue", "Yellow","pink","Red"];

int ColorIndex =0;

void ColorNamechange(){
 setState((){

ColorIndex = ColorIndex + 1 ;

if( ColorIndex == 5){
  ColorIndex = 0;
  }
  
// if( ColorIndex <= 4){
//   }else {ColorIndex = 0;
// }

 });


}




  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar  (
      backgroundColor: Colorlist [ColorIndex], 
      title: Text ( "Sobuj App")
    ),
    //App Bar
    




     body: Container(color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
           child: Text(
            "Active Color : " + ColorsNames [ColorIndex]+" Index  ${ColorIndex}", 
              style:TextStyle (fontSize: 20, color: Colorlist [ColorIndex],
                 fontWeight: FontWeight.w700),
            
            ),
        ),
     ) , 
      //container
      


  floatingActionButton: FloatingActionButton(onPressed: (){

    ColorNamechange();
  },
    child:Icon(Icons.add),
  
  ),
// Floating Action Bitton
// child





bottomNavigationBar: BottomNavigationBar(
  items: const <BottomNavigationBarItem>
     [BottomNavigationBarItem(
        icon: Icon(Icons.home),
         label:'Home',
       ),
       //Bottom Navigation Bar Item
      


          BottomNavigationBarItem(
        icon: Icon(Icons.music_note),
        label:'Music',
      ),

       
         BottomNavigationBarItem(
         icon: Icon(Icons.school),
         label:'School',
        ),




      ],
    ),
   );
  }
}