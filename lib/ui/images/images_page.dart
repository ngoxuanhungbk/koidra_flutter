
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/bloc/image/image_bloc.dart';
import 'package:flutter_krop/bloc/image/image_state.dart';
import 'package:flutter_krop/data/models/image_page_model.dart';
import 'package:flutter_krop/widgets/loading_widget.dart';
import 'package:flutter_krop/widgets/my_error_wiget.dart';

class ImagesPage extends StatefulWidget {
  static const ROUTE_NAME = 'ImagesPage';
  final BuildContext parentContext;

  ImagesPage(this.parentContext);

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  static const TAG = 'ImagesPage';
  final ImageBloc _bloc = ImageBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: BlocProvider.value(
            value: _bloc,
            child:
                BlocBuilder<ImageBloc, ImageState>(builder: (context, state) {
              return state.when((model) => _buildContent(model),
                  loading: () => LoadingWidget(),
                  error: (mes) => MyErrorWiget(mes));
            }),
          ),
        ),
      ),
    );
  }

  _buildContent(ImagePageModel model) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most Recent",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              GestureDetector(
                onTap: () {
                  _bloc.onViewAllMostRecentClick(widget.parentContext, model.mostRecent);
                },
                child: Text("View all",
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Color(0xff523AF2),
                        decoration: TextDecoration.underline)),
              )
            ],
          ),
        ),
        Container(
          height: 200,
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8),
              scrollDirection: Axis.horizontal,
              itemCount: model.mostRecent.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    model.mostRecent[index],
                    width: 180,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 18),
          child: Text(
            "All Cameras",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 3 / 2,
                crossAxisCount: 2),
            itemCount: model.cameraModels.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _bloc.onCameraClick(
                      widget.parentContext, model.cameraModels[index]);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 100,
                  color: Colors.black45,
                  child: Text(model.cameraModels[index].cameraName),
                ),
              );
            }),
        SizedBox(
          height: 60,
        )
      ],
    );
  }
}
