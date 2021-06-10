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
      child: Wrap(spacing: 5, runSpacing: 10, children: [
        ...operationals
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
              operationals.remove(item);
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
                    return InputDialogWidget((operation) {
                      setState(() {
                        operationals.add(operation);
                        widget.operationals(operationals);
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