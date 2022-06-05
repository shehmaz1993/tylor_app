import 'package:flutter/material.dart';
import 'package:tailor_app/order_page.dart';
import 'package:tailor_app/tylors.dart';
class Profile1 extends StatefulWidget {
  const Profile1({Key? key,required this.picture}) : super(key: key);
  final String picture;

  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tylor Profile',style:TextStyle(color:Colors.black54,fontStyle:FontStyle.italic ) ,),
        backgroundColor: Colors.orange[100],
        centerTitle: true,
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
          //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TylorList()));
            Navigator. pop(context,widget.picture);
          }
        ),
      ),
      body:ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 30,),

                Container(
                  height:160,
                  width: double.infinity,
                //  margin: EdgeInsets.all(100.0),
                 /* decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle
                  ),*/
                  child: Image.asset(widget.picture), //'assets/images/faisal.jpg
                ),
            SizedBox(height: 10,),
            Text('Faisal Mahmud',style:TextStyle(color:Colors.black,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,fontSize: 22 ,),),
                //Text('Pakshi Tylors',style:TextStyle(color:Colors.black,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,fontSize: 22 ,),),
        Container(
          height: 30,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset('assets/images/star.png'),
              Image.asset('assets/images/star.png'),
              Image.asset('assets/images/star.png'),
              Image.asset('assets/images/star.png'),
              Image.asset('assets/images/star.png')
            ],
          ),

        ),
                SizedBox(height: 10,),
                Text('House#145, Block#D, Basundhara R/A,Dhaka.',style: TextStyle(color: Colors.black54),)


       ]
      ),
          ),
          Container(
            color: Colors.white,
            height: 470,
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left:58.0,top: 20.0),
                  child: Row(
                    children: [
                      Text('Product',style:TextStyle(color:Colors.black,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,fontSize: 22 ,),),
                      SizedBox(width: 60,),
                      Text('Price',style:TextStyle(color:Colors.black,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,fontSize: 22 ,),)
                  
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height:100,
                          width:200,
                      child:Image.asset('assets/images/pant1.jpg') ,
                    ),
                    SizedBox(width: 10,),
                    Text('300/-'),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage()));
                      },
                      child: Container(
                        height: 30,
                        width: 70,
                        color: Colors.orange,
                        child: Center(child: Text('Order')),
                      ),
                    )

                  ],
                ),
                Row(
                  children: [
                    Container(
                      height:100,
                      width:200,
                      child:Image.asset('assets/images/black.jpg') ,
                    ),
                    SizedBox(width: 10,),
                    Text('150/-'),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage()));
                      },
                      child: Container(
                        height: 30,
                        width: 70,
                        color: Colors.orange,
                        child: Center(child: Text('Order')),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height:100,
                      width:200,
                      child:Image.asset('assets/images/shirt.jpg') ,
                    ),
                    SizedBox(width: 10,),
                    Text('250/-'),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage()));
                      },
                      child: Container(
                        height: 30,
                        width: 70,
                        color: Colors.orange,
                        child:Center(
                          child:  Text('Order'),
                        )
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height:100,
                      width:200,
                      child:Image.asset('assets/images/shirt2.jpg') ,
                    ),
                    SizedBox(width: 10,),
                    Text('150/-'),
                    SizedBox(width: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage()));
                      },
                      child: Container(
                        height: 30,
                        width: 70,
                        color: Colors.orange,
                        child: Center(child: Text('Order')),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
         /* MaterialButton(
            color: Colors.orange,
              child: Text('Confirm Order'),
              onPressed:(){}
          )*/
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Text('Feedback',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:18.0,left: 18.0,right: 18.0),
            child: Container(
              height: 150,
              width: 70,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(
                      blurRadius: 2.0,
                      offset: const Offset(3.0, 2.0),
                      color: Colors.grey,
                    ),
                    new BoxShadow(
                      blurRadius: 2.0,
                      offset: const Offset(-3.0, 0.0),
                      color: Colors.grey,
                    )
                  ]),

            ),

          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(250.0,18.0,18.0,18.0),

            child: GestureDetector(
              child: Container(
                height: 30,
                child: Center(child: Text('Submit')),
                color: Colors.blue,
              ),
            ),
          ),





        ],
      )
    );
  }
}
