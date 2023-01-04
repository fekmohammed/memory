import 'package:flutter/material.dart';
import './profile.dart';
import './add.dart';
import './marks.dart';
class Lists extends StatefulWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  State<Lists> createState() => _ListsState();
}
late final double? dataRowHeight;
// var a = TextEditingController(text: 'Mohammed Amin');
// var b = TextEditingController(text: 'FEKKAR');
// var c = TextEditingController(text: 'amin.fekkar@univ-constantine2.dz');
// var d = TextEditingController(text: 'President');
var a = TextEditingController();
class _ListsState extends State<Lists> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
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
                padding:const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Column(

                  children:  [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Row(
                        children: [
                          SizedBox(width: 40,),
                          Text('List of Memories',style: TextStyle(color: Colors.teal,fontSize: 22,fontWeight: FontWeight.bold)),
                           SizedBox(width: 40,),
                          Container(
                            width: 180,
                            height: 40,
                            child:TextFormField(
                              style: TextStyle(color: Colors.blueGrey),
                              controller: a,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                // filled: true,
                                border: InputBorder.none,
                                fillColor: Colors.teal[0],
                               icon:Icon(Icons.search_rounded,size: 40,) ,
                                // labelText: 'text',
                                // labelStyle: TextStyle(fontSize: 12.4,color: Colors.blueGrey),
                                hintText: 'search',
                                hintStyle: TextStyle(color: Colors.blueGrey,fontSize: 20),
                              ),
                            )
                            //
                          ),


                        ],
                      ),
                    ),

                    DataTable(
                      dataTextStyle: const TextStyle(color: Colors.blueGrey),

                      dataRowHeight: 50,
                      // columnSpacing: 280,
                      headingRowColor: const MaterialStatePropertyAll(Colors.teal),
                      headingRowHeight: 50,
                      headingTextStyle: const TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),
                      columns: const [
                        DataColumn(label: Text('MemoryId')),
                        DataColumn(label: Text('GroupId')),
                        DataColumn(label: Text('TeacherId')),
                        DataColumn(label: Text('Marks')),
                      ],
                      rows: const [
                        DataRow(cells:[
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('16')),
                        ] ),
                        DataRow(cells:[
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('16')),
                        ] ),
                        DataRow(cells:[
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('16')),
                        ] ),
                        DataRow(cells:[
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('16')),
                        ] ),
                        DataRow(cells:[
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('16')),
                        ] ),
                        DataRow(cells:[
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('123')),
                          DataCell(Text('16')),
                        ] ),
                      ],
                    ),




                  ],
                ),
              ),
            ),




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
                            backgroundColor: MaterialStatePropertyAll(Colors.blueGrey.shade100)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                        },
                        child: Row(
                          children: const [
                            SizedBox(width: 40,),
                            Icon(Icons.person_outline_sharp,color: Colors.teal,),
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
                        backgroundColor: MaterialStatePropertyAll(Colors.white)
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
    );;
  }
}
