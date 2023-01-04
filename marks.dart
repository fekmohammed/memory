import 'package:flutter/material.dart';
import './profile.dart';
import './add.dart';
import './list.dart';
class Marks extends StatefulWidget {
  const Marks({Key? key}) : super(key: key);

  @override
  State<Marks> createState() => _MarksState();
}

var a = TextEditingController();
var b = TextEditingController();
var c = TextEditingController();
var d = TextEditingController();

var e = TextEditingController();
var f = TextEditingController();
var g = TextEditingController();
var h = TextEditingController();

var i = TextEditingController();
var j = TextEditingController();
var k = TextEditingController();
var l = TextEditingController();

var m = TextEditingController();

var n = TextEditingController();

class _MarksState extends State<Marks> {

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
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //       colors: [
              //         Colors.teal,
              //         Colors.blueGrey
              //       ]
              //
              //   )
              // ),
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
              height:1100,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  children: [
                     Text('Marks',style: TextStyle(color: Colors.teal,fontSize: 22,fontWeight: FontWeight.bold),),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 10,top: 10),
                      child: SizedBox(
                        width: 500,
                        child: DataTable(
                          dataTextStyle: const TextStyle(color: Colors.blueGrey),

                          dataRowHeight: 50,
                          columnSpacing: 280,
                          headingRowColor: const MaterialStatePropertyAll(Colors.teal),
                          headingRowHeight: 50,
                          headingTextStyle: const TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),
                          columns: [
                            DataColumn(label: Text('Info')),
                            DataColumn(label: Text('id')),
                          ],
                          rows: [
                            DataRow(cells: [
                              const DataCell(Text('MemoryID')),
                              DataCell(TextField(
                                style: const TextStyle(color: Colors.blueGrey),
                                controller:a,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:'#id',
                                  hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                                ),
                              )),
                            ]),
                            DataRow(cells: [
                              const DataCell(Text('GroupID')),
                              DataCell(TextField(
                                style: const TextStyle(color: Colors.blueGrey),
                                controller:a,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:'#id',
                                  hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                                ),
                              )),
                            ]),
                          ],
                        ),
                      )
                    ),

                    DataTable(
                        dataTextStyle: const TextStyle(color: Colors.blueGrey),
                        // columnSpacing: 57,
                        dataRowHeight: 50,

                        headingRowColor: const MaterialStatePropertyAll(Colors.teal),
                        headingRowHeight: 50,
                        headingTextStyle: const TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),
                        columns: const [
                          DataColumn(label: Text('Subject')),
                          DataColumn(label: Text('Marks')),
                        ],
                        rows: [

                          DataRow(cells: [
                            const DataCell(Text('Memory organization')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                                controller:a,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:'Mark',
                                  hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                                ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Editorial quality')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:b,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),

                          DataRow(cells: [
                            const DataCell(Text('Quality of the bibliography')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:c,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Scientific content')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:d,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),

                          DataRow(cells: [
                            const DataCell(Text('Ergonomics / clarity of analysis')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:e,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),

                          DataRow(cells: [
                            const DataCell(Text('Development effort / Analysis: originality')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:f,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Quality of results')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:g,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Mastery of tools')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:h,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Presentation quality')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:i,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Fluent oral expression')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:j,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Well-posed problem')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:k,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Relevance and quality of responses on the scientific plan')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:l,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),
                          DataRow(cells: [
                            const DataCell(Text('Final Mark')),
                            DataCell(TextField(
                              style: const TextStyle(color: Colors.blueGrey),
                              controller:l,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'Final Mark',
                                hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
                              ),
                            )),
                          ]),


                        ]),

                    const SizedBox(
                      height: 40,
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
                              child: Center(child: Text('Submit'))),

                        ],
                      ),

                    )
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
                            Icon(Icons.person_outline_sharp,color: Colors.teal),
                            SizedBox(width: 80,),
                            Text('Profile',style: TextStyle(color: Colors.teal),)
                          ],
                        )),
                    TextButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.white)
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
