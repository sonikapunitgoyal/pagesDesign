import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './ensure_visible.dart';
import 'package:map_view/map_view.dart';

class MAp extends StatefulWidget {
  @override
  _MApState createState() => _MApState();
}

class _MApState extends State<MAp> {
  Uri _staticMapUri;
  final FocusNode _addressInputFocusNode = FocusNode();

  @override
  void initState() {
    _addressInputFocusNode.addListener(_update);
    _getStaticMap();
    super.initState();
  }

  void despose() {
    _addressInputFocusNode.removeListener(_update);
    super.dispose();
  }

  void _getStaticMap() async {
    final StaticMapProvider _staticMapProvider =
        StaticMapProvider('AIzaSyBw0ETREFE5pzzwJLGBhKBam2HxSrPYVtM');
    final Uri staticMapUri = _staticMapProvider.getStaticUriWithMarkers(
        [Marker('position', 'position', 41.40388, 2.17403)],
        center: Location(41.40388, 2.17403),
        width: 500,
     
        maptype: StaticMapViewType.roadmap);
    setState(() {
      _staticMapUri = staticMapUri;
    });
  }

  _update() {
    _getStaticMap();
  }

  @override
  Widget build(BuildContext context) {
     final deviceWidth = MediaQuery.of(context).size.width;
     final deviceHeight = MediaQuery.of(context).size.height;
   return Scaffold(
      body:  Container(width: deviceWidth,height: deviceHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Flexible(
              child: ListTile(
                title: Text("  B A L I",
                    style: TextStyle(fontSize: 35.0, color: Colors.black)),
                trailing: Icon(Icons.location_on),
              ),
            ),
            Flexible(
              child: ListTile(
                  leading: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  title: EnsureVisibleWhenFocused(
                    focusNode: _addressInputFocusNode,
                    child: TextFormField(
                      focusNode: _addressInputFocusNode,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Search for restaurants and casino",
                          hintStyle:
                              TextStyle(color: Colors.grey[600], fontSize: 20.0),
                          border: InputBorder.none),
                    ),
                  ),
                  trailing: Icon(
                    FontAwesomeIcons.slidersH,
                    color: Colors.grey,
                  )),
            ),
    Image.network(_staticMapUri.toString(),width: deviceWidth,fit: BoxFit.fitWidth,) ,
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: <Widget>[
                        SizedBox(height: 10.0),
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
                         Text('. Japanese.Fu..',
                            style: TextStyle(
                                color: Colors.grey[600],
                                 fontSize: 20.0)),
                                 ],), 
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Icon(Icons.near_me),
                            Text('25 KM',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                     fontSize: 15.0)),
                          ],
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: new BoxDecoration(
                        border: new Border.all(color: Colors.black)),
                  ),
                )
              ],
            ),
         Expanded(child:   Container(width:deviceWidth , height: 30.0,
            child: RaisedButton(child: Text("PURCHASE E-BOOK",
            style: TextStyle(fontSize: 25.0,color: Colors.white),),
            onPressed: (){},color: Color(0xffe6c07b), ))
         )
          ],
        ),
      ),
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
              title: new Text('Details')),
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
