import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainView extends StatelessWidget {
  const MainView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _messager = BasicMessageChannel("native_view_message", StandardMessageCodec());
    _messager.setMessageHandler((message) {
      //收到原生页面发送信息后pop当前route
      Navigator.pop(context);
      return null;
    });

    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlue,
            width: 250,
            height: 250,
            margin: EdgeInsets.fromLTRB(12, 80, 0, 0),
            child: GestureDetector(
              onTap: () => _pushToNativeView(context),
              child: Text(
                "Flutter view\n点击进行Flutter页面跳转",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  decoration: TextDecoration.none,
                ),
                ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 250,
            height: 250,
            margin: EdgeInsets.fromLTRB(12, 350, 0, 0),
            color: Colors.lightGreen,
            child: _getNativeNormalView(),
          ),
        ],
      ),
    );
  }

  void _pushToNativeView(BuildContext context) {
    if (Platform.isIOS) {
      final uiKitView = UiKitView(
        viewType: 'advancedView',
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(body: uiKitView,),));

      
    } else if (Platform.isAndroid){
      print('不支持的平台');
      return null;
    } else {
      print('不支持的平台');
      return null;
    }
  }

  Widget _getNativeNormalView() {
    if (Platform.isIOS) {
      final uiKitView = UiKitView(
        viewType: 'normalView',
        creationParams: {'value': 'Flutter传来的参数'},
        creationParamsCodec: StandardMessageCodec(),
      );
      return uiKitView;
    } else if (Platform.isAndroid){
      print('不支持的平台');
      return null;
    } else {
      print('不支持的平台');
      return null;
    }
  }

}