import 'package:flutter/material.dart';
class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
     final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: Container(height:deviceHeight ,width:deviceWidth ,
        child: Column(mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Flexible(
              child: ListTile(
                title: Text("  D E A L S",
                    style: TextStyle(fontSize: 45.0, color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
              
              ),
            ),
            Container(height: deviceHeight*0.70,color: Colors.white,
             width: deviceWidth,margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0,bottom: 20.0),
            child:
              Card(margin: EdgeInsets.only(bottom: 30.0,
              left: 30.0,
              right: 30.0,
              top: 30.0),
               child: Stack(overflow: Overflow.visible, children: <Widget>[Column( crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                 Image.asset('images/n.jpg',height: 300,
                fit: BoxFit.fill,width: deviceWidth,),
                 SizedBox(height: 5.0,),
                Text("  HUNGRY IN SINGAPORE-",textAlign: TextAlign.start,style: TextStyle(fontSize: 30.0),),
                SizedBox(height: 5.0,),
                         
                Text("  E-Book",textAlign: TextAlign.start,style: TextStyle(fontSize: 30.0)),
                           SizedBox(height: 5.0,),
                Text('    S\$ 55',textAlign: TextAlign.start,style: TextStyle(fontSize: 20.0))
               ],),
               Positioned(left: -30.0,top: 50.0,bottom: 250.0, child: Tab(icon: Image.asset('images/arrow-left.png',height: 60.0,)) ,),
              Positioned(right: -30.0,top: 50.0,bottom: 250.0,  child: Tab(icon: Image.asset('images/arrow-right.png',height: 60.0,))) ,
               Positioned(right: 60.0 ,left: 60.0,bottom: -25.0, child:  RaisedButton(child: Text("Purchase"),color: Color(0xffe6c07b),onPressed: (){
                  
                },
                ),
                )
              ],),
                
              ),
            
    ),
          ],
        ),
      )
    ,bottomNavigationBar: BottomNavigationBar(
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
      ),);
    
  }
}