import 'package:counter_7/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:intl/intl.dart';
import 'package:counter_7/drawer.dart';

// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'main.dart';

class BudgetDataPage extends StatelessWidget {
  final list;
  BudgetDataPage({super.key, @required this.list});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blue,
        title: Text('Budget Data', style: TextStyle(
          fontSize: 20, color: Colors.white,
        ),),
      ),
      // Adding drawer menu
      drawer: DrawerClass('Show Budget'),

      body: Center(
        child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromRGBO(128,212,196,1)
            )
          ),
          elevation: 6,
          margin: const EdgeInsets.all(10),
          child:  ListTile(
            title: Text(list[index][0]),
            subtitle: Text(list[index][1].toString() + "\$ , " + list[index][3]),
            trailing: Text(list[index][2]),
          ),
        )
          
        
      ),
      )
    );
  }


}