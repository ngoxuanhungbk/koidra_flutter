import 'dart:developer' as developer;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_krop/contants/ui_contants.dart';

class CustomTextInput extends StatefulWidget {
  static const ROUTE_NAME = 'CustomTextInput';
  String placeHolder;
  FormFieldValidator<String> validator;
  TextEditingController controller;
  TextInputType keyboardType;
  bool isPassword;

  CustomTextInput(
      {this.placeHolder,
      this.validator,
      this.controller,
      this.isPassword = false,
      this.keyboardType = TextInputType.text});

  @override
  _CustomTextInputState createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  static const TAG = 'CustomTextInput';
  FocusNode _focus = new FocusNode();
  bool isError = false;
  Color colorFocus = ColorContants.borderColorFocus;
  bool isFocus = false;
  String textError;
  TextEditingController controller;
  bool _obscureText = true;

  void updateError(bool value) {
    setState(() {
      isError = value;
      colorFocus = isError
          ? ColorContants.borderColorError
          : ColorContants.borderColorFocus;
    });
  }

  @override
  void initState() {
    super.initState();
    controller =
        widget.controller == null ? TextEditingController() : widget.controller;
    _focus.addListener(() {
      setState(() {
        isFocus = _focus.hasFocus;
        if (widget.validator != null) {
          textError = widget.validator(controller.text);
          if (!_focus.hasFocus) {
            updateError(textError != null);
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: isFocus ? 8 : 0),
            child: TextField(
              controller: controller,
              focusNode: _focus,
              keyboardType: widget.keyboardType,
              obscureText: widget.isPassword && _obscureText,
              decoration: InputDecoration(
                  suffixIcon: !widget.isPassword
                      ? null
                      : IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          }),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  hintText: widget.placeHolder,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          color: isError
                              ? ColorContants.borderColorError
                              : ColorContants.borderColor,
                          width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: colorFocus, width: 1))),
              cursorColor: colorFocus,
            ),
          ),
          if (_focus.hasFocus)
            Row(
              children: [
                Container(
                  height: 16,
                  color: Colors.white,
                  child: Text(
                    widget.placeHolder,
                    style: TextStyle(color: colorFocus),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  margin: EdgeInsets.only(left: 12),
                  alignment: Alignment.centerLeft,
                )
              ],
            )
        ]),
        if (isError)
          Padding(
            padding: EdgeInsets.only(top: 4, left: 16),
            child: Text(
              textError,
              style: TextStyle(color: Colors.red),
            ),
          )
      ],
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
