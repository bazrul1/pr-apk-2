

import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage.dart';
import 'package:flutter_application_2/PhotoPage.dart';
import 'package:flutter_application_2/SchoolPage.dart';

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


List PageList = [ HomePage(), PhotoPage(),SchoolPage() ];


int PageIndex = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar  (
      backgroundColor: Colorlist [ColorIndex], 
      title: Text ( "Sobuj App")
    ),
    //App Bar
    




     body: PageList[PageIndex],
     
     
      
      //container
      


  floatingActionButton: FloatingActionButton(onPressed: (){
     ColorNamechange();
   
  },
    child:Icon(Icons.edit,
    ),
  
  ),
// Floating Action Bitton
// child





bottomNavigationBar: BottomNavigationBar(onTap: (index){
setState(() {
  PageIndex = index;
});


},


backgroundColor: const Color.fromARGB(255, 101, 99, 99),
selectedItemColor: const Color.fromARGB(255, 3, 238, 85),
unselectedItemColor: const Color.fromARGB(255, 254, 254, 255),
currentIndex: PageIndex,

  items: const <BottomNavigationBarItem>
     [BottomNavigationBarItem(
        icon: Icon(Icons.home),
         label:'Home',
       ),
       //Bottom Navigation Bar Item
      


          BottomNavigationBarItem(
        icon: Icon(Icons.photo_sharp),
        label:'Photo',
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