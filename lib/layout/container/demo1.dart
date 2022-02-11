/**
 *  container 用法
 */

import 'package:flutter/material.dart';

class ContainerDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('信息卡片'),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: new BoxDecoration(
                 color: Colors.green,
                //设置四周圆角 角度
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              transform: new Matrix4.rotationZ(0.3),
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
              margin: EdgeInsets.all(15),
              child: Icon(Icons.settings),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 0,
                top: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('JsLin'), Text('深圳打工仔')],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 100),
              child: Text('不可描述'),
            )
          ],
        ));
  }
}
