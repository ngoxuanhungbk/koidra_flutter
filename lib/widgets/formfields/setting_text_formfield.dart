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
    Widget suffix,
    Widget icon,
    Widget prefix,
  }) : super(
  key: key,
  validator: validator,
  onSaved: onSaved,
  initialValue: initialValue,
  builder: (FormFieldState state) {
    return Container(
      child: TextField(
        style: TextStyle(color: Color(0xff363a45), fontSize: 16),
        onChanged: (text) {
          state.didChange(text);
        },
        decoration: InputDecoration(
          labelText: labelText,
          suffix: suffix,
          errorText: state.errorText,
          hintText: hintText
        ),
      ),
    );
  });
}