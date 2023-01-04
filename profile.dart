// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'MyFieldText.dart';
import './list.dart';
import './add.dart';
import './marks.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}
var a = TextEditingController(text: 'Mohammed Amin');
var b = TextEditingController(text: 'FEKKAR');
var c = TextEditingController(text: 'amin.fekkar@univ-constantine2.dz');
var d = TextEditingController(text: 'President');

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.logout),
          ],
        ),
    backgroundColor: Colors.teal,
    // centerTitle: true,

    shadowColor: Colors.transparent,
    ),
    body: SingleChildScrollView(
    child: Stack(
    children: [
    Container(
    color: Colors.teal,
    height: 200,
    width: double.maxFinite,
    ),

    Container(
    margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
    decoration: const BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(50),
    topRight: Radius.circular(50)),
    color: Colors.white,
    ),
    width: 500,
    height: 800,
    child: Padding(
      padding:const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 230),
            child: Text('My Profile',style: TextStyle(color: Colors.teal,fontSize: 22,fontWeight: FontWeight.bold)),
          ),
          myTextField('First Name','Entre Your First Name',a,300),const SizedBox(height: 20,),
          myTextField('Last Name','Entre Your Last Name',b,300),const SizedBox(height: 20,),
          myTextField('Email','Entre Your Email',c,300),const SizedBox(height: 20,),
          myTextField('Grade','President,Supervisor,Examinator',d,300),
          const SizedBox(height: 60,),
          ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
            ),
            onPressed: () {
              setState(() {
              });
            },
            child:  Column(
              children: const [
                SizedBox(
                    width:300 ,
                    height: 60,
                    child: Center(child: Text('Update'))),

              ],
            ),

          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
            ),
            onPressed: () {
              setState(() {
              });
            },
            child:  Column(
              children: const [
                SizedBox(
                    width:300 ,
                    height: 60,
                    child: Center(child: Text('Log Out'))),

              ],
            ),

          )

        ],
      ),
    ),
    ),
      Container(
        margin: const EdgeInsets.only(top: 130),
        height: 150,
        decoration: const BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.teal,
            offset: Offset(2.0, 1.0),
            blurRadius: 10.0,
            spreadRadius: 3.0,
          )],
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('images/pexels.jpg'))),
      )



    ],
    ),
    ),
     drawer: Drawer(
       backgroundColor: Colors.teal,
       child: SingleChildScrollView(

         child: Column(
           children: [
             Container(
               color: Colors.teal,
               width: double.infinity,
               height: 200,
               padding: const EdgeInsetsDirectional.only(top: 20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     margin: const EdgeInsets.only(bottom: 10),
                     height: 70,
                     decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(image: AssetImage('images/pexels.jpg'))),
                   ),
                   const Text('President',
                       style: TextStyle(fontSize: 20, color: Colors.white)),
                   const Text('amin.fekkar@univ-constantine2.dz',
                       style: TextStyle(fontSize: 14, color: Colors.grey))
                 ],
               ),
             ),
             Container(
               padding: const EdgeInsets.only(top: 15),
               child: Column(
                 children: [
                   TextButton(
                       style: ButtonStyle(
                           backgroundColor: MaterialStatePropertyAll(Colors.white)
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                       },
                      child: Row(
                        children: const [
                          SizedBox(width: 40,),
                          Icon(Icons.person_outline_sharp,color: Colors.teal),
                          SizedBox(width: 80,),
                          Text('Profile',style: TextStyle(color: Colors.teal),)
                        ],
                      )),
                   TextButton(
                       style: ButtonStyle(
                           backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade100)
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Marks()));
                       },
                       child: Row(
                         children: const [
                           SizedBox(width: 40,),
                           Icon(Icons.list_alt,color: Colors.teal),
                           SizedBox(width: 80,),
                           Text('Marks',style: TextStyle(color: Colors.teal),)
                         ],
                       )),
                   TextButton(
                       style: ButtonStyle(
                           backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade100)
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Lists()));
                       },
                       child: Row(
                         children: const [
                           SizedBox(width: 40,),
                           Icon(Icons.list,color: Colors.teal),
                           SizedBox(width: 80,),
                           Text('List',style: TextStyle(color: Colors.teal),)
                         ],
                       )),
                   TextButton(
                       style: ButtonStyle(
                           backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade100)
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const Add()));
                       },
                       child: Row(
                         children: const [
                           SizedBox(width: 40,),
                           Icon(Icons.add,color: Colors.teal),
                           SizedBox(width: 80,),
                           Text('ADD',style: TextStyle(color: Colors.teal),)
                         ],
                       )),
                 ],
               ),
             )
           ],
         ),
       ),
     ),
    );
  }
}
