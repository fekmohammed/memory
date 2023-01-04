import 'package:flutter/material.dart';
import './MyFieldText.dart';
import './marks.dart';
import './profile.dart';
import './list.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
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

class _AddState extends State<Add> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Desktop Application", child: Text("Desktop Application",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "Mobile Application", child: Text("Mobile Application",style: TextStyle(color: Colors.blueGrey,fontSize: 14))),
      const DropdownMenuItem(value: "Web Site Application", child: Text("Web Site Application",style: TextStyle(color: Colors.blueGrey,fontSize: 14))),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems2 = [
      const DropdownMenuItem(value: "Group 1", child: Text("Group 1",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "Group 2", child: Text("Group 2",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "Group 3", child: Text("Group 3",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
    ];
    return menuItems2;
  }
  List<DropdownMenuItem<String>> get dropdownItems3 {
    List<DropdownMenuItem<String>> menuItems3 = [
      const DropdownMenuItem(value: "IFA", child: Text("IFA",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "TLSI", child: Text("TLSI",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
    ];
    return menuItems3;
  }
  List<DropdownMenuItem<String>> get dropdownItems5 {
    List<DropdownMenuItem<String>> menuItems5 = [
      // const DropdownMenuItem(value: "TI", child: Text("TI",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      // const DropdownMenuItem(value: "SCI", child: Text("SCI",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "RSD", child: Text("RSD",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "STIC", child: Text("STIC",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      // const DropdownMenuItem(value: "GL", child: Text("GL",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      // const DropdownMenuItem(value: "SI", child: Text("SI",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "GL", child: Text("GLM",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
      const DropdownMenuItem(value: "SITW", child: Text("SITW",style: TextStyle(color: Colors.blueGrey,fontSize: 14),)),
    ];
    return menuItems5;
  }

  String selectedValue5 = "STIC";
  // String selectedValue4 = "Licence";
  String selectedValue3 = "IFA";
  String selectedValue2 = "Group 1";
  String selectedValue = "Desktop Application";

  // get tabs => null;
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
                padding:const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Creating A New Memory',
                        style: TextStyle(
                            color: Colors.teal, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.teal,
                        ),
                        child: TabBar(
                            indicator: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(100)),
                            tabs: const [
                              Tab(text: 'Details'),
                              Tab(text: 'Memory Info'),
                              Tab(text: 'Student Info'),

                            ]),
                      ),
                      const SizedBox(
                        height: 80,
                      ),

                      SizedBox(
                        height: 400,
                        child: TabBarView(children: [

                          Column(
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all( width:1,color: Colors.teal.shade200),

                                  borderRadius: BorderRadius.circular(3),

                                ),

                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),

                                  child: DropdownButton(
                                      underline: Container(),

                                      value: selectedValue3,
                                      items: dropdownItems3,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedValue3 = newValue!;
                                        });
                                      }),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all( width:1,color: Colors.teal.shade200),

                                  borderRadius: BorderRadius.circular(3),

                                ),

                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),

                                  child: DropdownButton(
                                      underline: Container(),

                                      value: selectedValue5,
                                      items: dropdownItems5,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedValue5 = newValue!;
                                        });
                                      }),
                                ),
                              )

                            ],
                          ),//Tab1

                          Column(
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  myTextField('Memory Id', 'Id', a, 140),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  myTextField('Teachers Id', 'Id', i, 140),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              myTextField('First Teacher name', 'first name', b, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              myTextField('Second Teacher name', 'Second name', c, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              myTextField('Third Teacher name', 'Third name', d, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              myTextField('Memory Theme', 'Memory Theme', h, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all( width:1,color: Colors.teal.shade200),

                                  borderRadius: BorderRadius.circular(3),

                                ),

                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(67, 0, 67, 0),

                                  child: DropdownButton(
                                      underline: Container(),

                                      value: selectedValue,
                                      items: dropdownItems,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedValue = newValue!;
                                        });
                                      }),
                                ),
                              )
                            ],
                          ),//Tab2

                          Column(
                            children: [
                              myTextField('Group ID', 'Group ID', j, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              myTextField('First Student name', 'first name', e, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              myTextField('Second Student name', 'Second name', f, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              myTextField('Third Student name', 'Third name', g, 300),
                              const SizedBox(
                                height: 20,
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  border: Border.all( width:1,color: Colors.teal.shade200),

                                  borderRadius: BorderRadius.circular(3),

                                ),

                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
                                  child: DropdownButton(
                                      underline: Container(),
                                      value: selectedValue2,
                                      items: dropdownItems2,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedValue2 = newValue!;
                                        });
                                      }),
                                ),
                              )
                            ],
                          )//Tab3
                        ]
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),//tabViewController
                      ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
                        ),
                        onPressed: () {
                          setState(() {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => tabs[Marks()]));
                          });
                        },
                        child:  Column(
                          children: [
                            Container(
                                width:300 ,
                                height: 60,
                                child: const Center(child: Text('ADD'))),

                          ],
                        ),

                      )
                    ],
                  ),
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
                            backgroundColor: MaterialStatePropertyAll(Colors.white)
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
