import 'package:flutter/material.dart';
import 'imagenavigation.dart';
import 'grid.dart';

import 'signup.dart';
import 'alert.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _tCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight= MediaQuery.of(context).size.height;
    final targetWidth = deviceWidth > 768.0 ? 500.0 : deviceWidth * .8;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        width: targetWidth,height: deviceHeight,
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 2.0, right: 2.0),
              child: Column(
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 800,
                    height: 20.0,
                    child: FacebookSignInButton(onPressed: () {}),
                  ),
                  TextFormField(
                    controller: _tCont,
                    decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderSide: new BorderSide(color: Colors.grey[400])),
                      labelText: 'Email',
                      fillColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(enabledBorder: UnderlineInputBorder(borderSide: new BorderSide(color: Colors.grey[400])),
                      labelText: 'Password',
                      fillColor: Colors.black,
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ButtonTheme(
                    minWidth: 400.0,
                    height: 40.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>Gridview(),
                            ));
                      },
                      child:
                          Text('Login', style: TextStyle(color: Colors.white)),
                      color: Color(0xffe6c07b),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUp(_tCont.text)),
                      );
                    },
                    child: Text('Forget Password?',
                        style: TextStyle(color: Colors.black38)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
