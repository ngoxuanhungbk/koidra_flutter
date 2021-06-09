import 'package:flutter/material.dart';
import '../input_dialog_widget.dart';

class OperationalWidget extends StatefulWidget {
  static const ROUTE_NAME = 'OperationalWidget';
  final ValueChanged<List<String>> operationals;

  OperationalWidget(this.operationals);

  @override
  _OperationalWidgetState createState() => _OperationalWidgetState();
}

class _OperationalWidgetState extends State<OperationalWidget> with AutomaticKeepAliveClientMixin {
  List<String> operationals = [];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[ Wrap(
              spacing: 5,
              runSpacing: 10,
              children: operationals.map((item) => Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(48),
                    border: Border.all(color: Color(0xffc2bff8)),
                  ),
                  child: Row(children:[ Text(item, style: TextStyle(color: Color(0xff6558f5), fontSize: 16),),
                    SizedBox(width: 5), InkWell(child: Icon(Icons.close, color: Color(0xff6558f5),),
                      onTap: (){
                        setState(() {
                          operationals.remove(item);
                        });
                      },)]),
                ),
              )).toList()
          ),
            SizedBox(width: 5,),
            InkWell(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48),
                  border: Border.all(color: Color(0xffc2bff8)),
                ),
                child: Row(children:[ Text('Add new', style: Theme.of(context).textTheme.subtitle1,),
                  SizedBox(width: 5,),
                  Icon(Icons.add, color: Color(0xff788896),)]),
              ),
              onTap: (){
                setState(() {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return InputDialogWidget((crop){
                          setState(() {
                            operationals.add(crop);
                            widget.operationals(operationals);
                          });
                        });
                      });
                });
              },
            ),
          ]
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}