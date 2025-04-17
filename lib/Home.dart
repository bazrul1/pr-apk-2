import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (appBar: AppBar  (
      backgroundColor: const Color.fromARGB(255, 188, 240, 191) , 
      title: Text ( "Sobuj App")
    ),
    




     body: Container(color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
           child: Text("This is my first app", style:TextStyle(
            fontSize: 20,color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w700),
            
            ),
        ),
     ) ,
      





floatingActionButton: FloatingActionButton
(onPressed:(){
print ("Button clied");},
child: Icon (Icons.add)
),





bottomNavigationBar: BottomNavigationBar(
  items: const <BottomNavigationBarItem>
     [BottomNavigationBarItem(
        icon: Icon(Icons.home),
         label:'Home',
       ),

          BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label:'Business',
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