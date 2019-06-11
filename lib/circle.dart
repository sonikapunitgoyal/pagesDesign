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

  
  @override
  
  Widget build(BuildContext context) {
 final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(body:Container(height: deviceHeight,width:deviceWidth ,
      child: SingleChildScrollView(child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[ 
            Stack(children: <Widget>[
            Image.asset(photos[photoIndex],fit: BoxFit.cover,),
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
 Container(margin: EdgeInsets.all(20.0),child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
 ListTile(leading: Container(
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
      color: Colors.black,
      shape: BoxShape.rectangle,
  ),
  ),title:Text("Open Now",style:TextStyle(fontWeight:FontWeight.bold)) ,subtitle: Text("12pm-2:30pm"),)
         , SizedBox(height: 5.0,),
         ListTile(leading: Container(
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
      color: Colors.black,
      shape: BoxShape.rectangle,
  ),
  ),title:Text("JW Marriot,Singapore South",style:TextStyle(fontWeight:FontWeight.bold)) ,
  subtitle: Text("Beach,30 Beach Road,Level"),
  
  )
   
   ],),)
           ,

          
           
           Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround, children: <Widget>[
         Column(children: <Widget>[ Container(
      height: 60.0,
      width: 60.0,
      decoration: new BoxDecoration(
      border: Border.all(color: Color(0xffe6c07b),width: 1.0),
      shape: BoxShape.circle,
  ),
  ),
  Text("call") ]),
  Column(children: <Widget>[ Container(
      height: 60.0,
      width: 60.0,
      decoration: new BoxDecoration(
      border: Border.all(color: Color(0xffe6c07b),width: 1.0),
      shape: BoxShape.circle,
  ),

  ),
  Text("Website") ]),
 Column(children: <Widget>[  Container(
      height: 60.0,
      width: 60.0,
      decoration: new BoxDecoration(
      border: Border.all(color: Color(0xffe6c07b),width: 1.0),
      shape: BoxShape.circle,
  ),
  ),
  Text("Direction") ]),
  Column(children: <Widget>[ Container(
      height: 60.0,
      width: 60.0,
      decoration: new BoxDecoration(
      border: Border.all(color: Color(0xffe6c07b),width: 1.0),
      shape: BoxShape.circle,
  ),
  ),
  Text("Reservation") ])
           ],),
           Container( margin: EdgeInsets.only(left:40.0,right: 40.0,top: 10.0,bottom: 10.0),child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
             Text("Recieved 15% off the bill",style: TextStyle(fontSize: 30.0),),
           SizedBox(height: 10.0,),
           Text("For weekend brunch only",style: TextStyle(fontSize: 20.0,color: Colors.grey[600]),),
               SizedBox(height: 10.0) , 
             Text("Since overflow is Overflow.visible MyWidget displays outside of the Stack.However it doesn't accept gestures in the overflowed area. ",
             style: TextStyle(fontSize: 15.0,color: Colors.grey[600]),  )
          ,SizedBox(height: 20.0,),
Container(height: 50.0,width: 800.0,
            child: RaisedButton(child: Text("Redeem Privilages",
            style: TextStyle(fontSize: 25.0,color: Colors.white),),
            onPressed: (){},color: Color(0xffe6c07b), )
            ),
          
           Container(margin: EdgeInsets.only(left:10.0,right: 10.0,top: 10.0,bottom: 10.0), child: Text('About',style: TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold), textAlign: TextAlign.start,)),
           Container(margin: EdgeInsets.only(left:10.0,right: 10.0,top: 10.0,bottom: 10.0),
             child:
               Text("Since overflow is Overflow.visible MyWidget displays outside of the Stack.However it doesn't accept gestures in the overflowed area. I have no idea if it's easy difficult or downright impossible to make this change, but I can think of a gazillion use cases for that which at the moment must be satisfied by using the much more complex Overlay, or some Stack tricks Since overflow is Overflow.visible MyWidget displays outside of the Stack.",
             style: TextStyle(fontSize: 15.0,color: Colors.grey[600]),  )
        ,  
             
           )  ,
   ],),)
           
        ,    
         
          ],
        ),),
    )
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
