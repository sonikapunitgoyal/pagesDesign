import 'package:flutter/material.dart';

class Price extends StatefulWidget {
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  bool changeColor = false;

  bool changeColor2 = false;
  bool changeColor3 = false;

  List<String> items = [
    "Asain",
    "Indian",
    "Japanese",
    "Korean",
    "Fusion",
    "Middle Eastern",
    "Western"
  ];

  @override
  Widget build(BuildContext context) {
     final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(height:deviceHeight ,width:deviceWidth ,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
              child: ListTile(
                leading: Icon(Icons.close, color: Colors.black, size: 40.0),
                trailing: Text(
                  "clear",
                  style: TextStyle(fontSize: 20.0, color: Color(0xffe6c07b)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Price Range",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 10.0,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: '\$',
                                alignLabelWithHint: true,
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        child: Container(
                          height: 10.0,
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: '\$\$',
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                          child: Container(
                        height: 10.0,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: '\$\$\$',
                              border: new OutlineInputBorder(
                                  borderSide:
                                      new BorderSide(color: Colors.black))),
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rating",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Colors.white30,
                            border:
                                new Border.all(color: Colors.black, width: 1.0),
                            borderRadius: new BorderRadius.circular(4.0),
                          ),
                          height: 40.0,
                          child: FlatButton(
                            color: changeColor ? Colors.blue : Colors.white30,
                            onPressed: () {
                              setState(() {
                                changeColor = !changeColor;
                              });
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '3',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Colors.white30,
                            border:
                                new Border.all(color: Colors.black, width: 1.0),
                            borderRadius: new BorderRadius.circular(4.0),
                          ),
                          height: 40.0,
                          child: FlatButton(
                            color:
                                changeColor2 ? Color(0xffe6c07b) : Colors.white30,
                            onPressed: () {
                              setState(() {
                                changeColor2 = !changeColor2;
                              });
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '4',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                        child: Container(
                          decoration: new BoxDecoration(
                            border:
                                new Border.all(color: Colors.black, width: 1.0),
                            borderRadius: new BorderRadius.circular(4.0),
                          ),
                          height: 40.0,
                          child: FlatButton(
                            color:
                                changeColor3 ? Color(0xffe6c07b) : Colors.white30,
                            onPressed: () {
                              setState(() {
                                changeColor3 = !changeColor3;
                              });
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '5',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
                margin: EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        "Cuisine",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Container(
                          height: 200.0,
                          child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${items[index]}',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                              );
                            },
                          )),
                      SizedBox(
                        height: 80.0,
                      ),
                      ButtonTheme(
                        height: 40.0,
                        minWidth: 800.0,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text('APPLY',
                              style: TextStyle(color: Colors.white)),
                          color: Color(0xffe6c07b),
                        ),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}
