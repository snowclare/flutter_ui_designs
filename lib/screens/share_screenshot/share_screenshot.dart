import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:share_extend/share_extend.dart';
import 'package:path_provider/path_provider.dart';

class ShareScreenShot extends StatelessWidget {
  static String uiName = 'Share Screen Shot';

  var scrKey = GlobalKey();

  takescrshot() async {
    RenderRepaintBoundary boundary = scrKey.currentContext.findRenderObject();
    var image = await boundary.toImage(
      pixelRatio: 4
    );
    var byteData = await image.toByteData(format: ImageByteFormat.png);
    var pngBytes = byteData.buffer.asUint8List();
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    var fileName = 'share_image.png';
    var file = File('$tempPath/$fileName');
    await file.writeAsBytes(pngBytes);
    print(pngBytes);
    ShareExtend.share(file.path, "image");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Share Screen Shot'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              takescrshot();
            },
          )
        ],
      ),
      body: RepaintBoundary(
        key: scrKey,
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                child: Markdown(data: src),
              )
            ],
          ),
        ),
      ),
    );
  }

  String src = """
  **NOVEMBER 23 2015**

**This Is My First Article**

Bacon ipsum dolor amet drumstick salami strip steak swine boudin, chuck doner turducken pastrami meatball pork burgdoggen. Pork chop venison meatloaf ball tip drumstick alcatra pork loin prosciutto leberkas capicola. Porchetta shoulder landjaeger, short loin kielbasa pork chop alcatra frankfurter burgdoggen shank prosciutto tongue rump shankle.

Chicken burgdoggen ham hock jowl, kevin pork loin pork capicola flank strip steak leberkas pig brisket beef. Jowl filet mignon biltong chicken, burgdoggen turducken short ribs brisket landjaeger drumstick shoulder. Cupim ribeye beef turducken, strip steak ham andouille pork biltong shank landjaeger hamburger ground round. Alcatra pork chop t-bone shoulder ham hock.

Kevin pancetta ball tip, short loin swine turducken pork loin ham hock boudin short ribs. Turducken alcatra beef tenderloin, venison ham frankfurter ham hock corned beef fatback ribeye pastrami. Pig ball tip beef buffalo leberkas landjaeger filet mignon bacon meatloaf t-bone.


  """;
}
