import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/gen/assets.gen.dart';

class CustomPasswordInputField extends StatefulWidget {
  static const ROUTE_NAME = 'CustomPasswordInputField';
  final onEditingComplete;
  final labelText;
  final hintText;

  CustomPasswordInputField(this.labelText, this.hintText,
      {this.onEditingComplete});

  @override
  _CustomPasswordInputFieldState createState() =>
      _CustomPasswordInputFieldState();
}

class _CustomPasswordInputFieldState extends State<CustomPasswordInputField> {
  static const TAG = 'CustomPasswordInputField';
  var isShowPass = false;
  TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextField(
        onChanged: (values) {
          widget.onEditingComplete(values);
        },
        controller: controller,
        obscureText: !isShowPass,
        obscuringCharacter: "*",
        cursorColor: Colors.black,
        style: TextStyle(color: Colors.black, fontSize: 16),
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: isShowPass
                  ? Icon(
                      Icons.remove_red_eye,
                      color: Colors.black,
                    )
                  : Image.asset(
                      Assets.images.icCloseEyes.path,
                      width: 24,
                      height: 24,
                    ),
              onPressed: () {
                isShowPass = !isShowPass;
                setState(() {});
              },
            ),
            fillColor: Colors.white,
            filled: true,
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            hintStyle: TextStyle(
              color: Color(0xff8D93A5),
              fontSize: 12,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff8D93A5)),
                borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff363A45)),
                borderRadius: BorderRadius.circular(12)),
            hintText: widget.hintText),
      ),
    );
  }
}
