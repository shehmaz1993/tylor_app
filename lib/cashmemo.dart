import 'package:flutter/material.dart';
import 'package:tailor_app/home.dart';
import 'package:tailor_app/homepage.dart';
import 'package:tailor_app/tylors.dart';

import 'order_page.dart';
class CashMemo extends StatefulWidget {
  const CashMemo({Key? key}) : super(key: key);

  @override
  _CashMemoState createState() => _CashMemoState();
}

class _CashMemoState extends State<CashMemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Cash Memo',style:TextStyle(color:Colors.black54,fontStyle:FontStyle.italic ) ,),
        backgroundColor: Colors.orange[100],
        centerTitle: true,
        leading:  IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OrderPage()));
            }
        ),
      ),
      body:ListView(
        children: [
          SizedBox(height: 40,),
          Container(
            //color: Colors.orange,
            height: 150,
            width: double.infinity,
            child: Center(
              //padding:  EdgeInsets.only(left:2.0),
              child: Image.asset('assets/images/shopping.png'),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 160,
            width: double.infinity,
           // color: Colors.black12,
            child: Column(
              children: [

                Row(
                  children: [
                    SizedBox(width: 15,),
                    Text('Measurement',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Body',style:TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(width: 190,),
                    Text('6 inches',style:TextStyle(color: Colors.black54,fontSize: 18),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 16,),
                    Text('Sleeve',style:TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(width: 180,),
                    Text('12 inches',style:TextStyle(color: Colors.black54,fontSize: 18),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 16,),
                    Text('Waist',style:TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(width: 186,),
                    Text('9 inches',style:TextStyle(color: Colors.black54,fontSize: 18),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 16,),
                    Text('Length',style:TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(width: 175,),
                    Text('9 inches',style:TextStyle(color: Colors.black54,fontSize: 18),),
                  ],
                ),

              ],
            ),
          ),
          Container(
            height: 160,
            width: double.infinity,
           // color: Colors.black12,
            child: Column(
              children: [

                Row(
                  children: [
                    SizedBox(width: 15,),
                    Text('Expenses',style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Cloths',style:TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(width: 140,),
                    Text('200/-(per length)',style:TextStyle(color: Colors.black54,fontSize: 18),),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Fees',style:TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(width: 185,),
                    Text('300/-',style:TextStyle(color: Colors.black54,fontSize: 18),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 18,),
                    Text('Total',style:TextStyle(color: Colors.black54,fontSize: 18),),
                    SizedBox(width: 186,),
                    Text('500/-',style:TextStyle(color: Colors.black54,fontSize: 18),),
                  ],
                ),
               /* Row(
                  children: [
                    SizedBox(width: 16,),
                    Text('Length',style:TextStyle(color: Colors.black38,fontSize: 18),),
                    SizedBox(width: 175,),
                    Text('15 inches',style:TextStyle(color: Colors.black38,fontSize: 18),),
                  ],
                ),*/

              ],
            ),
          ),
          MaterialButton(
              color: Colors.orange,
              child: Text('Place Order'),
              onPressed: (){
               showAlertDialog(context);
              })

        ],
      ) ,
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget onLineButton = TextButton(
      child: Text("online"),
      onPressed:  () {
        final snackBar = SnackBar(
          content: const Text('Your order has been confirmed!'),

        );


        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TylorList()));
      },
    );
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
    Widget offLineButton = TextButton(
      child: Text("offline"),
      onPressed:  () {
        final snackBar = SnackBar(
          content: const Text('You will pay to the rider!'),

        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => TylorList()));

      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Order Confirmation"),
      content: Text("Do you want to confirm this order?"),
      actions: [
        onLineButton,
        offLineButton,
        cancelButton,


      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


}
