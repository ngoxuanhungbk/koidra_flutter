import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/bloc/auth/AuthBloc.dart';
import 'package:flutter_krop/contants/ui_contants.dart';
import 'package:flutter_krop/gen/assets.gen.dart';
import 'package:flutter_krop/ui/components/custom_text_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatefulWidget {
  static const ROUTE_NAME = 'AuthPage';

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  static const TAG = 'AuthPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              'Sign In',
              style: TextStyle(
                  color: Color(0xFF363A45),
                  fontSize: 34,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextInput(
              placeHolder: "Email",
              validator: (String value) {
                return value == null || value.isEmpty
                    ? "Value is requried"
                    : null;
              },
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextInput(
              placeHolder: "Password",
              validator: (String value) {
                return value == null || value.isEmpty
                    ? "Value is requried"
                    : null;
              },
              isPassword: true,
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(child: Container(
              height: 48,
              child: Text(
                'Sign In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF2C67DD)),
            ),onTap: (){
              context.read<AuthBloc>().authorized();
            },),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 1,
                  color: ColorContants.borderColor,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text('or'),
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: ColorContants.borderColor,
                )),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: ColorContants.borderColor, width: 1)),
              child: Row(
                children: [
                  Assets.images.windows.image(width: 24, height: 24),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Continue with Microsoft',
                    style: TextStyle(
                        color: ColorContants.primaryBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 48,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border:
                      Border.all(color: ColorContants.borderColor, width: 1)),
              child: Row(
                children: [
                  Assets.images.google.image(width: 24, height: 24),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Continue with Google',
                    style: TextStyle(
                        color: ColorContants.primaryBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              child: Text(
                'Forgot password?',
                style: TextStyle(
                    color: ColorContants.primaryBlue,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                showForgotPassword();
              },
            ),
            SizedBox(
              height: 35,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }

  void showForgotPassword() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Color(0xFF363A45),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 40, right: 16),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFF4F4F6),
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: CustomTextInput(
                  placeHolder: 'Email',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                child: Container(
                  height: 48,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorContants.primaryBlue),
                  child: Text(
                    'Send email',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  alignment: Alignment.center,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  showSuccess();
                },
              ),
              SizedBox(
                height: 32,
              ),
            ],
            mainAxisSize: MainAxisSize.min,
          );
        });
  }

  void showSuccess() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Color(0xFF363A45),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.of(context).pop();
                        })
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 40, right: 16),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFF4F4F6),
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                height: 24,
              ),
              Assets.images.icCheck.image(width: 72, height: 72),
              SizedBox(
                height: 24,
              ),
              Text(
                'Email sent!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: ColorContants.secondaryGreen),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'We sent a recovery email to your inbox. Please check Spam/Junk folder if you cannot find it. ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: ColorContants.grey3),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border:
                    Border.all(color: ColorContants.primaryBlue, width: 1)),
                child: Text(
                  'Okay, got it',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorContants.primaryBlue),
                ),
                alignment: Alignment.center,
              ),onTap: (){
                Navigator.of(context).pop();
              },),
              SizedBox(
                height: 28,
              ),
              InkWell(child: Text(
                'Resend email',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: ColorContants.primaryBlue),
              ),onTap: (){
                Navigator.of(context).pop();
              },),
              SizedBox(height: 36,)
            ],
            mainAxisSize: MainAxisSize.min,
          );
        });
  }
}
