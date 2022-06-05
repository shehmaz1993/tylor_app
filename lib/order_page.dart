import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tailor_app/cashmemo.dart';
import 'package:tailor_app/tylors.dart';
class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {


  List weight=['1 kg','2 kg','3 kg','4 kg','5 kg'];
  List listItem=['NID','Birth certificate'];
  String dropdownValue1='BODY(inches)';
  String dropdownValue2='SLEEVE(inches)';
  String dropdownValue3='WAIST(inches)';
  String dropdownValue4='LENGTH(inches)';
  String dropdownValue5='LENGTH(inches)';
  String dropdownValue6='STYLE';
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: const Text('Tailor Chai!',style:TextStyle(color:Colors.black54,fontStyle:FontStyle.italic ) ,),
                       backgroundColor: Colors.orange[100],
                       centerTitle: true,
                       leading:  IconButton(
                         icon: const Icon(Icons.arrow_back, color: Colors.white),
                         onPressed: () => Navigator.of(context).pop(),
                      ),
                      ),
        body: ListView(
          children: [
            Container(

                height: 60,
                width: double.infinity,
                //color: Colors.lime,
                child: Center(child: Text('Measurement',style:TextStyle(color:Colors.black,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,fontSize: 22 ),))),
            Container(
               height: 70,
               width: double.infinity,
               child:Column(
                    children: [
                      Text('We are here to put some sample of your measurement',style: TextStyle(color: Colors.black54),),
                      Text('You can just select the checkboxes according to your',style: TextStyle(color: Colors.black54),),
                      Text('preference and we will go further',style: TextStyle(color: Colors.black54),),
                    ],
               ),
            ),
            Container(
              height: 50,
              child: Column(
                children: [
                Text('Kamiz',style:TextStyle(color:Colors.black,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,fontSize: 22 ),),
                SizedBox(height: 2,),
                  Container(height: 2,width:240,color:Colors.orange[100] ,)
                ],
              ),
            ),
            Container(
              height:150,
              width: double.infinity,
              //color: Colors.lime,
              child:Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10, 0,10,0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width:160,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                            child: Center(
                              //padding: EdgeInsets.fromLTRB(40, 1, 4, 7),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue1,
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left:10,right:10.0),
                                    child: const Icon(Icons.arrow_drop_down,color: Colors.black38,),
                                  ),
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black38),

                                  /*underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),*/
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue1 = newValue!;
                                    });
                                  },
                                  items: <String>['BODY(inches)','1' '2', '3', '4','5','6','7','8','9','10']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 40,width: 10,),
                        Container(
                          height: 60,
                          width:160,

                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                            child: Center(
                              //padding: EdgeInsets.fromLTRB(40, 1, 4, 2),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue2,
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left:10,right:10.0),
                                    child: const Icon(Icons.arrow_drop_down,color: Colors.black38,),
                                  ),
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black38),

                                  /*underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),*/
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue2 = newValue!;
                                    });
                                  },
                                  items: <String>['SLEEVE(inches)','1' '2', '3', '4','5','6','7','8','9','10']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            )

                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding:  EdgeInsets.fromLTRB(10, 0,10,0),
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width:160,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Center(
                            //padding: EdgeInsets.fromLTRB(40, 1, 4, 7),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownValue3,
                                icon: Padding(
                                  padding: const EdgeInsets.only(left:10,right:10.0),
                                  child: const Icon(Icons.arrow_drop_down,color: Colors.black38,),
                                ),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black38),

                                /*underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),*/
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue3 = newValue!;
                                  });
                                },
                                items: <String>['WAIST(inches)','1' '2', '3', '4','5','6','7','8','9','10']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          )

                        ),
                        SizedBox(height: 40,width: 10,),
                        Container(
                          height: 60,
                          width:160,

                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))

                          ),
                          child: Center(
                            //padding: EdgeInsets.fromLTRB(40, 1, 4, 7),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue4,
                        icon: Padding(
                          padding: const EdgeInsets.only(left:10,right:10.0),
                          child: const Icon(Icons.arrow_drop_down,color: Colors.black38,),
                        ),
                        elevation: 16,
                        style: const TextStyle(color: Colors.black38),

                        /*underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),*/
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue4 = newValue!;
                          });
                        },
                        items: <String>['LENGTH(inches)','1' '2', '3', '4','5','6','7','8','9','10']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                        ),

                      ]

                    ),
                  )
                ],
              )
            ),
            Container(
              height: 50,
              child: Column(
                children: [
                  Text('Pant',style:TextStyle(color:Colors.black,fontStyle:FontStyle.normal,fontWeight:FontWeight.bold,fontSize: 22 ),),
                  SizedBox(height: 2,),
                  Container(height: 2,width:240,color:Colors.orange[100] ,)
                ],
              ),
            ),
            Container(
                height:180,
                width: double.infinity,
                //color: Colors.lime,
                child:Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10, 0,10,0),
                      child: Row(
                        children: [
                          Container(
                              height: 60,
                              width:160,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 1, 4, 7),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: dropdownValue5,
                                      icon:const Icon(Icons.arrow_drop_down,color: Colors.black38,), /*Padding(
                                        padding: const EdgeInsets.only(left:10,right:10.0),
                                        child: const Icon(Icons.arrow_drop_down,color: Colors.black38,),
                                      ),*/
                                      elevation: 16,
                                      style: const TextStyle(color: Colors.black38),

                                      /*underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),*/
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue5 = newValue!;
                                        });
                                      },
                                      items: <String>['LENGTH(inches)','1' '2', '3', '4','5','6','7','8','9','10']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),

                                ),
                              )
                          ),
                          SizedBox(height: 40,width: 10,),
                          Container(
                              height: 60,
                              width:160,

                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Center(
                                //padding: EdgeInsets.fromLTRB(40, 1, 4, 2),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue6,
                                    icon: Padding(
                                      padding: const EdgeInsets.only(left:10,right:10.0),
                                      child: const Icon(Icons.arrow_drop_down,color: Colors.black38,),
                                    ),
                                    elevation: 16,
                                    style: const TextStyle(color: Colors.black38),

                                    /*underline: Container(
                                height: 2,
                                color: Colors.deepPurpleAccent,
                              ),*/
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue6 = newValue!;
                                      });
                                    },
                                    items: <String>['STYLE','1' '2', '3', '4','5','6','7','8','9','10']
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              )

                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 45,
                      width:150,
                      color:Colors.orange[100],

                      child: MaterialButton(
                        child:Text('Confirm Order',style: TextStyle(color: Colors.black),),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CashMemo()));

                        },
                      ),
                    )

                  ],
                )
            ),

          ],
        ),

    );
  }
}
