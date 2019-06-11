import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final String value;

  SignUp(this.value);

  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading:  IconButton(icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25.0,
        ),onPressed: (){Navigator.pop(context);},),
        backgroundColor: Colors.white,
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Text("Email",
                    style: TextStyle(color: Colors.black38),
                    textAlign: TextAlign.left),
                Text(
                  "${widget.value}",
                  style: TextStyle(color: Colors.black38),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Current Password',
                    fillColor: Colors.black,
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    fillColor: Colors.black,
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 40.0,
                ),
                ButtonTheme(
                  minWidth: 400.0,
                  height: 40.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Save', style: TextStyle(color: Colors.white)),
                    color: Color(0xffe6c07b),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
