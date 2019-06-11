import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "D E A L S",
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
          textAlign: TextAlign.start,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 4.0,crossAxisSpacing: 4.0,  ),
          itemBuilder: (BuildContext context, int index) {
            return Card(
                color: Colors.white,
                child: ListView(children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                              border: new Border.all(color: Colors.black)),
                          child: Image.asset(
                            'images/n.jpg',fit: BoxFit.cover,
                           
                          ),
                          
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Hungry In SINGAPORE E-Book \$  55",
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]));
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.description,
              ),
              title: new Text('Deals')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              title: new Text('Accounts')),
        ],
      ),
    );
  }
}
