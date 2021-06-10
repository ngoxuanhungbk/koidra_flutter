import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class InputDialogWidget extends StatefulWidget {
  static const ROUTE_NAME = 'InputDialogWidget';
  final ValueChanged<String> callbackValue;

  InputDialogWidget(this.callbackValue);

  @override
  _InputDialogWidgetState createState() => _InputDialogWidgetState();
}

class _InputDialogWidgetState extends State<InputDialogWidget> {
  static const TAG = 'InputDialogWidget';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Dialog(child: Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ TextFormField(
            onSaved: (value){
              widget.callbackValue(value);
            },
          ),
            ElevatedButton(onPressed: (){
              _formKey.currentState.save();
              Navigator.pop(context);
            }, child: Text('Save', style: Theme.of(context).textTheme.button,),
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ), primary: Color(0xff6558f5)
            ),)
          ]
        ),
      ),
    ));
  }
}