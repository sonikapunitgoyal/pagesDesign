import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title:Text(
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
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Container(margin: EdgeInsets.only(left:20.0,right: 20.0),
                color: Colors.white,
                height: 100.0,width: 100.0,
                child:SingleChildScrollView(
                    child: Card(color: Colors.white70,
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                      

                      
                      
                         Image.asset(
                            'images/n.jpg',fit: BoxFit.cover,
                          
                          ),
                          
                        
                        SizedBox(height: 20.0,width: 20.0,),
                          
                           Text(
                            "Hungry IN ",style: TextStyle(fontSize: 20.0)
                            
                          ),
                           SizedBox(height:5.0),

                           Text(
                            "SINGAPORE- ",style: TextStyle(fontSize: 20.0)
                            
                          ),
  SizedBox(height:5.0),
                           Text(
                            "E-BOOK ",style: TextStyle(fontSize: 20.0)
                            
                          ),
                          SizedBox(height:5.0),
                           Text(
                            "S\$ 55",style: TextStyle(color: Colors.grey[600],fontSize: 20.0),
                            
                          ),
                     ] 
                     ),
                     )
                      
                    
                  
                ));
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
