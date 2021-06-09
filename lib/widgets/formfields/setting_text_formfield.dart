import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingTextFormfied extends FormField<String>{
  SettingTextFormfied({
    Key key,
    String initialValue,
    @required String hintText,
    FormFieldSetter<String> onSaved,
    FormFieldValidator<String> validator,
    bool autoValidate = false,
    bool enabled = true,
    bool selected = false,
    @required String labelText,
    Widget suffixIcon,
    Widget icon,
    Widget prefix,
    bool checkColor = false
  }) : super(
  key: key,
  validator: validator,
  onSaved: onSaved,
  initialValue: initialValue,
  builder: (FormFieldState state) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText, style: Theme.of(state.context).textTheme.subtitle2,),
          TextField(
            onChanged: (text) {
              state.didChange(text);
              state.setState(() {
                if(text == ''){
                  checkColor = false;
                }else{
                  checkColor =true;
                }
              });
            },

            decoration: InputDecoration(
              fillColor: checkColor?Colors.white:Color(0xfff7f9fa),
              errorText: state.errorText,
              hintText: hintText
            ),
          )
        ],
      ),
    );
  });
}