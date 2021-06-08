import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(genericArgumentFactories: true)
class ChartSampleData<T> {
  double x;

  ChartSampleData({this.x});

}