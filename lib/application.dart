import 'package:flutter/material.dart';
import 'package:flutter_krop/ui/root/root_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  static const TAG = 'Application';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.white,
          accentColor: Colors.black,
          accentColorBrightness: Brightness.dark,
          toggleableActiveColor: Colors.red,
          bottomAppBarColor: Colors.white,
          primaryColorBrightness: Brightness.light,
          primaryColorDark: Colors.black87,
          primaryIconTheme: IconThemeData(color: Colors.black),
          brightness: Brightness.light,
          cardColor: Colors.white,
          backgroundColor: Colors.grey[200],
          dialogBackgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.light(onPrimary: Colors.black),
          sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Color(0xff3f414e),
            inactiveTrackColor: Color(0xffa0a3b1),
            trackHeight: 0.5,
            thumbColor: Color(0xff3f414e),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
            overlayColor: Colors.purple.withAlpha(32),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
          ),
          appBarTheme: AppBarTheme(
              color: Color(0xfff7f9fa),
              textTheme: TextTheme(
                  title: TextStyle(
                      color: Color(0xff293845),
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              brightness: Brightness.light,
              elevation: 0),
          textTheme: GoogleFonts.latoTextTheme(ThemeData.light()
              .textTheme
              .copyWith(
              button: ThemeData.light().textTheme.button.copyWith(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                // da dung
              ),
              caption: ThemeData.light().textTheme.caption.copyWith(
                color: Color(0xff9586a8),
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
              headline6: ThemeData.light().textTheme.headline6.copyWith(
                color: Color(0xff4c5964),
                fontSize: 18,
                //used
              ),
              headline5: ThemeData.light().textTheme.headline5.copyWith(
                color: Color(0xff2d0c57),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              headline4: ThemeData.light().textTheme.headline4.copyWith(
                color: Color(0xff2d0c57),
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              headline3: ThemeData.light().textTheme.bodyText2.copyWith(
                color: Color(0xff2d0c57),
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              headline2: ThemeData.light().textTheme.bodyText2.copyWith(
                color: Color(0xff9586a8),
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
              headline1: ThemeData.light().textTheme.headline1.copyWith(
                color: Color(0xff2d0c57),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              subtitle1: ThemeData.light().textTheme.subtitle1.copyWith(
                color: Color(0xff788896),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //da dung
              ),
              subtitle2: ThemeData.light().textTheme.subtitle2.copyWith(
                color: Color(0xff4b5c6b),
                fontSize: 15,
                fontWeight: FontWeight.bold,
                //da dung
              ),
              bodyText2: ThemeData.light().textTheme.bodyText2.copyWith(
                color: Color(0xffffffff),
                fontSize: 15,
                //da dung
              ),
              bodyText1: ThemeData.light().textTheme.bodyText1.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                //da dung
              ))),
          inputDecorationTheme: InputDecorationTheme(
            prefixStyle: TextStyle(color: Colors.transparent),
            hintStyle: TextStyle(color: Color(0xffccced7), fontSize: 16),
            labelStyle: TextStyle(
                color: Color(0xff363a45),
                fontSize: 12,
                fontWeight: FontWeight.normal),
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixStyle: TextStyle(color: Colors.black),
            errorStyle: TextStyle(color: Colors.red, fontSize: 12),
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            filled: true,
            hoverColor: Colors.black,
            focusColor: Colors.black,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xff8d93a5), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xff8d93a5), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black, width: 1),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffccced7), width: 1),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Color(0xff2C67DD),
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
              ))),
      home: RootPage(),
    );
  }
}