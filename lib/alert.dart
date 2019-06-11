import 'package:flutter/material.dart';


class Discover extends StatefulWidget {

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
   int photoIndex = 0;

  List<String> photos = [
    'images/n.jpg',
    'images/n.jpg',
    'images/n.jpg',
    'images/n.jpg'
  ];
  void _showDialog(){
    showDialog(context: context,builder: (BuildContext context)
    {
      return  AlertDialog(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))), title: Container(margin:
         EdgeInsets.only(top:20.0,left: 100.0,right: 100.0,bottom: 10.0),
                    height: 50.0,
                    width: 50.0,
                    decoration:  BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        border:  Border.all(color: Colors.black)),
                  ),content:Container(width: 150,height: 150,
                 
                    child: Column(children: <Widget>[
          Text("Get 30% off",style :TextStyle(fontSize: 30.0)),
                SizedBox(height: 10.0,),
           Text("your e-book purchase",
           style :TextStyle(fontSize: 25.0)),
           SizedBox(height: 20.0,),
            FlatButton(child: Text("No, thanx",
            style :TextStyle(fontSize: 15.0,
            color: Colors.grey[600])),onPressed: ()
            {Navigator.pop(context);},color: Colors.transparent,)
        ],),
                  ) ,
        );
      

    });
  }
  @override
  
  Widget build(BuildContext context) {
     final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(body:  Container(height:deviceHeight ,width:deviceWidth ,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[ 
            Stack(children: <Widget>[
               Image.asset(photos[photoIndex],height: 380.0,fit: BoxFit.cover,),
                    Positioned(
                      bottom: 25.0,
                      left: 25.0,
                      right: 25.0,
                      child: SelectedPhoto(numberOfDots: photos.length, photoIndex: photoIndex),
                    ),
              Positioned(left: 10.0,bottom: 10.0, child: Text('AKIRA BACK',style:TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold)),) 
            ],),
            SizedBox(height: 10.0),
           Row(children: <Widget>[
              Container(margin: EdgeInsets.all(20.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                Text('Akira Back',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0)),
                          SizedBox(height: 10.0),
                         Row( 
                           children: <Widget>[Icon(Icons.star_border,color:  Color(0xffe6c07b),size: 20.0,),
                         Text(" 4.5 (3 reviews)",style: TextStyle(
                                  color:  Color(0xffe6c07b),
                                   fontSize: 20.0)),
                           Text('. Japanese.Fusion',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                   fontSize: 20.0)),
                                   ],),
            ],),
              ),
            SizedBox(width: 30.0,),
            Icon(Icons.bookmark_border,size: 30.0,)
           ],),
           Container(margin: EdgeInsets.only(left:40.0,right: 40.0,top: 10.0,bottom: 10.0),
             child:
               Text("Since overflow is Overflow.visible MyWidget displays outside of the Stack.However it doesn't accept gestures in the overflowed area. I have no idea if it's easy difficult or downright impossible to make this change, but I can think of a gazillion use cases for that which at the moment must be satisfied by using the much more complex Overlay, or some Stack tricks Since overflow is Overflow.visible MyWidget displays outside of the Stack Since overflow is Overflow.visible MyWidget displays outside.",
             style: TextStyle(fontSize: 15.0),  )
        ,  
             
           )  ,
               SizedBox(height: 20.0) ,      
           Flexible(child: Container(width: 1000.0, height: 50,
            child: RaisedButton(child: Text("PURCHASE E-BOOK",
            style: TextStyle(fontSize: 25.0,color: Colors.white),),
            onPressed: (){_showDialog();},color: Color(0xffe6c07b), )))
          ],
        ),
    ),
      );
  
  }
}
class SelectedPhoto extends StatelessWidget {

  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({this.numberOfDots, this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
      child: new Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4.0)
          ),
        ),
      )
    );
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.0,
                blurRadius: 2.0
              )
            ]
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for(int i = 0; i< numberOfDots; ++i) {
      dots.add(
        i == photoIndex ? _activePhoto(): _inactivePhoto()
      );
    }

    return dots;
  }


  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
