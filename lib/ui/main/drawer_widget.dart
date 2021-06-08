import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/contants/ui_contants.dart';
import 'package:flutter_krop/gen/assets.gen.dart';

enum SCREEN_NAME { OPERATIONS, CROP, CLIMATE, CLIMATE_NOW, IMAGES }

class DrawerWidget extends StatefulWidget {
  static const ROUTE_NAME = 'DrawerWidget';

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  static const TAG = 'DrawerWidget';
  SCREEN_NAME screenName = SCREEN_NAME.OPERATIONS;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SafeArea(
              bottom: false,
              child: Row(
                children: [
                  Assets.images.icLogo.image(height: 16),
                  Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: InkWell(
                      child:
                          Assets.images.icMenuFold.image(width: 16, height: 16),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              )),
          SizedBox(
            height: 24,
          ),
          Divider(
            color: ColorContants.divider,
            height: 1,
            thickness: 1,
          ),
          _buildDate(),
          _buildItem(Assets.images.icOperations.path, 'Operations',
              screenName == SCREEN_NAME.OPERATIONS, () {
            if (screenName != SCREEN_NAME.OPERATIONS) {
              setState(() {
                screenName = SCREEN_NAME.OPERATIONS;
              });
            }
          }),
          _buildItem(
              Assets.images.icCrop.path, 'Crop', screenName == SCREEN_NAME.CROP,
              () {
            if (screenName != SCREEN_NAME.CROP) {
              setState(() {
                screenName = SCREEN_NAME.CROP;
              });
            }
          }),
          _buildItem(Assets.images.icClimate.path, 'Climate',
              screenName == SCREEN_NAME.CLIMATE, () {
            if (screenName != SCREEN_NAME.CLIMATE) {
              setState(() {
                screenName = SCREEN_NAME.CLIMATE;
              });
            }
          }),
          _buildItem(Assets.images.icClimateNow.path, 'Climate Now',
              screenName == SCREEN_NAME.CLIMATE_NOW, () {
            if (screenName != SCREEN_NAME.CLIMATE_NOW) {
              setState(() {
                screenName = SCREEN_NAME.CLIMATE_NOW;
              });
            }
          }),
          _buildItem(Assets.images.icImages.path, 'Images',
              screenName == SCREEN_NAME.IMAGES, () {
            if (screenName != SCREEN_NAME.IMAGES) {
              setState(() {
                screenName = SCREEN_NAME.IMAGES;
              });
            }
          }),
          Divider(
            color: ColorContants.divider,
            height: 1,
            thickness: 1,
          ),
          SizedBox(
            height: 14,
          ),
          _buildItem(
              Assets.images.icAccount.path, 'Account Settings', false, () {}),
        ],
      ),
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 3 / 4.0,
      padding: EdgeInsets.only(left: 18),
    );
  }

  Widget _buildDate() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Row(
        children: [
          Assets.images.icCalendar.image(width: 24, height: 24),
          SizedBox(
            width: 8,
          ),
          Text(
            '01/06/2017 - 31/12/2017',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: ColorContants.grey2),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
      String icon, String text, bool isSelected, VoidCallback onPress) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 8, bottom: 24),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
              color:
                  isSelected ? ColorContants.primaryBlue : ColorContants.grey1,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
                  color: isSelected
                      ? ColorContants.primaryBlue
                      : ColorContants.grey1),
            )
          ],
        ),
      ),
      onTap: onPress,
    );
  }
}
