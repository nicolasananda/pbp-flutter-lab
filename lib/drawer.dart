import 'dart:html';
import 'package:counter_7/showdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:counter_7/Form.dart';

class DrawerClass extends StatelessWidget{
  DrawerClass(this.currentPage);
  final String currentPage;

  @override 
  Widget build(BuildContext context){
    
    return Drawer(
      child: Column(
          children: [
      
            // Adding clickable menu
            ListTile(
              title: const Text('Counter Program'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Add Budget'),
              onTap: () {
                // Routing the menu to the form page                
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  AddBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Show Budget'),
              onTap: () {
                // Routing the menu to the form page                
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>  BudgetDataPage(list: AddBudgetPage.listData)),
                );
              },
            ),
          ],
        ),
      
    );
  }
}