import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/input_dialog_widget.dart';

class CropWidget extends StatefulWidget {
  static const ROUTE_NAME = 'CropWidget';
  final ValueChanged<List<String>> callbackCrops;

  CropWidget(this.callbackCrops);

  @override
  _CropWidgetState createState() => _CropWidgetState();
}

class _CropWidgetState extends State<CropWidget>
    with AutomaticKeepAliveClientMixin {
  List<String> crops = [];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(spacing: 5, runSpacing: 10, children: [
        ...crops
            .map((item) => Chip(label: Text(item, style: TextStyle(color: Color(0xff6558f5),
        fontSize: 16,
        fontWeight: FontWeight.bold),),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
          side: BorderSide(color: Color(0xffc2bff8)
          ),
        ),
          backgroundColor: Colors.white,
          deleteIcon: Icon(Icons.close, color: Color(0xff6558f5),),
          onDeleted: (){
              setState(() {
               crops.remove(item);
              });
          },
        ))
            .toList(),
        Chip(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48),
              side: BorderSide(color: Color(0xffc2bff8)),
          ),
          label: Text('Add new', style: Theme.of(context).textTheme.subtitle1), deleteIcon: Icon(Icons.add, color: Color(0xff788896),),
        backgroundColor: Colors.white,
          onDeleted: () {
            setState(() {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return InputDialogWidget((crop) {
                      setState(() {
                        crops.add(crop);
                        widget.callbackCrops(crops);
                      });
                    });
                  });
            });
          },)
      ]),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
