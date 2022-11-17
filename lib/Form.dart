import 'package:counter_7/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'package:intl/intl.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/showdata.dart';
import 'main.dart';

class AddBudgetPage extends StatefulWidget {
  static List<List<Object>> listData = _AddBudgetPageState.list;
  const AddBudgetPage({super.key});

  @override
  State<AddBudgetPage> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
  static final List<List<Object>> list = [];
  final _formKey = GlobalKey<FormState>();
  String type = 'Income';
  String title = '';
  int amount = 0;
  DateTime datetime = DateTime.now();
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  late final String dateString = dateFormat.format(datetime);

  TextEditingController dateInputController = TextEditingController();


  List<String> listType = ['Income', 'Expenses'];
  List<Object> listForm = [];

  List<List<Object>> _getList(){
    return list;
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blue,
        title: Text('Form', style: TextStyle(
          fontSize: 20, color: Colors.white,
        ),),
      ),
      // Adding drawer menu
      drawer: DrawerClass('Add Budget'),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Title",
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      title = value!;
                    });
                  },

                  onSaved: (String? value) {
                    setState(() {
                      title = value!;
                    });
                  },

                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Title cannot be empty!';
                    }
                    return null;
                  },

                ),
              ),
                const Divider(
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                      hintText: "Amount",
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        amount = int.parse(value!);
                      });
                    },

                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        amount = int.parse(value!);
                      });
                    },
                    // Validator sebagai validasi form
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Amount cannot be empty!';
                      }
                      return null;
                    },


                  ),
                ),
                const Divider(
                  height: 1,
                ),
                DropdownButton<String>(
                    value: type,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    elevation: 13,                  
                    underline: Container(
                      height: 2,
                      color: Colors.brown,
                    ),
                    items: listType.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(), onChanged: (String? value) {
                  setState(() {
                    type = value!;
                  });
                },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Date',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1)),
                  ),
                  controller: dateInputController,
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050));
                        

                    if (pickedDate != null) {
                      dateInputController.text = DateFormat('dd MMMM yyyy').format(pickedDate);
                    }
                  },
                ),
              
                SizedBox(height: 20.0,),
                TextButton(
                  child: const Text(
                    "Save",
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 2, 114, 93)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      listForm.add(title);
                      listForm.add(amount);
                      listForm.add(type);
                      
                      listForm.add(dateInputController.text);
                      list.add(listForm);
                      listForm = [];
                      _sendDataToBudgetData(context);
                    }
                  },
                ),
            ],),
          ),
        ),

      ),
    );
  }
  void _sendDataToBudgetData(BuildContext context){
    var dataToSend = list;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  BudgetDataPage(list: dataToSend,))
    );
    
  }
}
