import 'package:flutter/material.dart';

class myTextField extends StatefulWidget {
  // bool isVisible=true;
  late String labelText;
  late String hintText;
  // late IconData icn;
  // late bool isPass;
  late double width;
  late var later;
  var myController= new TextEditingController();

  myTextField(this.labelText,this.hintText,this.myController,this.width);

  @override
  State<myTextField> createState() => _myTextFieldState();
}

class _myTextFieldState extends State<myTextField> {
  // bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 50,
      child: TextFormField(
        style: TextStyle(color: Colors.blueGrey),
        controller: widget.myController,
        // obscureText: widget.isPass? isVisible:false,
        keyboardType: TextInputType.emailAddress,

        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.teal[0],
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 0),
          ),
          labelText: widget.labelText,
          labelStyle: TextStyle(fontSize: 12.4,color: Colors.blueGrey),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),
        ),
      ),
    );
  }
}