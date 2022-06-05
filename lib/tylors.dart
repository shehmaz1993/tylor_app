import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tailor_app/order_page.dart';
import 'package:tailor_app/profile_1.dart';
import 'package:tailor_app/profile_2.dart';
import 'package:tailor_app/profile_3.dart';
import 'package:tailor_app/profile_4.dart';
import 'package:tailor_app/profile_5.dart';
import 'package:tailor_app/profile_6.dart';
import 'package:tailor_app/profile_7.dart';
import 'package:tailor_app/profile_8.dart';
import 'package:tailor_app/tylordata.dart';
import 'package:flutter/services.dart' ;

import 'homepage.dart';
class TylorList extends StatefulWidget {
  const TylorList({Key? key}) : super(key: key);

  @override
  _TylorListState createState() => _TylorListState();
}

class _TylorListState extends State<TylorList> {


  List _items = [];



  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/tylorList.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }
  var leading=CircleAvatar(
    radius: 48, // Image radius
    backgroundImage: AssetImage('assets/images/faisal.jpg')
          );



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('Tailor List',style:TextStyle(color:Colors.black54,fontStyle:FontStyle.italic ) ,),
        backgroundColor: Colors.orange[100],
        centerTitle: true,
        leading:  IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
          }
        ),
      ),
      body:FutureBuilder(
        builder: (context,snapshot){
          var f_data=jsonDecode(snapshot.data.toString());
          return ListView.builder(itemBuilder:(BuildContext context,int index){

            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                // color: Colors.white,
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
                        offset: const Offset(-3.0, -2.0),
                        color: Colors.grey,
                      )
                    ]),

                child: ListTile(
                  onLongPress: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile1(picture: f_data[index]['image'],),
                        ));


                  },
                  leading: CircleAvatar(
                      radius: 48, // Image radius
                      backgroundImage: AssetImage(f_data[index]['image'])
                      ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(f_data[index]['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,fontStyle: FontStyle.italic),),
                  ),
                  subtitle: Container(
                    height: 40,
                    width: 100,
                    child: Row(
                      children: [
                        Image.asset('assets/images/star.png'),
                        Image.asset('assets/images/star.png'),
                        Image.asset('assets/images/star.png'),
                        Image.asset('assets/images/star.png'),

                      ],
                    ),
                  ),

                ),

              ),
            );
          },
          itemCount: f_data.length,
          );
        },
        future: DefaultAssetBundle.of(context).loadString('assets/tylorList.json'),
      )


    );
  }

  }

 /*Future<List<TylorData>> readJsonData()async{
    final String jsondata= await rootBundle.rootBundle.loadString('assets/tylorList.json');
    final list= jsonDecode(jsondata) as List<dynamic>;
    return list.map((e) => TylorData.fromJson(e)).toList();
 }*/

/*
  FutureBuilder(
        future: readJson(),
        builder: (context,data){
          if(data.hasError){
            return Center(child: Text("${data.error}"));
          }
          else if(data.hasData){
           // var items=data.data as List<TylorData>;
            return ListView.builder(
                itemBuilder: (context,index){
                  return Padding(
                    padding:  EdgeInsets.only(top:0.0),
                    child: Container(
                      height: 130,
                      width: 400,
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
                      child: Row(
                        children: [
                          Container(
                              height: 130,
                              width: 120,
                              //color: Colors.orange,

                              child: Image.asset(_items[index]["image"],height: 130,width: 120,)
                          ),
                          Column(
                            children: [
                              Container(
                                  height: 40,
                                  width: 240,
                                  // color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:8.0,top: 16.0,bottom: 0.0),
                                    child: Text(_items[index]["name"]),
                                  )
                              ),
                              Container(
                                height: 30,
                                width: 240,
                                // color: Colors.red,
                                child: Row(

                                  children: [
                                    Image.asset('assets/images/star.png'),
                                    Image.asset('assets/images/star.png'),
                                    Image.asset('assets/images/star.png'),
                                    Image.asset('assets/images/star.png'),
                                  ],
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 240,
                                // color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('House#145, Block#D, Basundhara R/A,Dhaka.',style: TextStyle(color: Colors.black54)),
                                ),
                              )

                            ],
                          )
                        ],
                      ),
                    ),

                  );

                }
            );

          }
          else{
            return Center(child: CircularProgressIndicator());
          }
        },
      )
 */