import 'package:flutter/material.dart';
import 'package:memory/viva%20president/add.dart';
import 'package:memory/viva%20president/marks.dart';
import './profile.dart';
import 'package:memory/viva%20president/list.dart';
import 'MyListItem.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
var currentPage = DrawerSections.Profile;

// Widget MyDrawerList() {
//   return
// }

enum DrawerSections { Profile(), Marks, List, Add }
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.Profile){
      container = const Profile();
    } else if (currentPage == DrawerSections.Marks){
      container = const Marks();
    } else if (currentPage == DrawerSections.List){
      container = const Lists();
    } else if (currentPage == DrawerSections.Add){
      container = const Add();
    }
      return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        ) ,
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
              margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.white,
              ),
              width: 500,
              height: 710,
              child: container,


            ),
          ],
        ),
      ),
      drawer: Drawer(
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
                MyListItem(1, "profile", Icons.person_outline_sharp, currentPage == DrawerSections.Profile ? true : false),
                MyListItem(2,"Marks",Icons.note_add,currentPage == DrawerSections.Marks ? true : false),
                MyListItem(3,"Add",Icons.add,currentPage == DrawerSections.Add ? true : false),
                MyListItem(4,"List",Icons.list,currentPage == DrawerSections.List ? true : false),
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
