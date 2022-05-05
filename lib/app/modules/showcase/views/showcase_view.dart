import 'package:digimonapi/app/modules/digilist/controllers/digilist_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/showcase_controller.dart';

class ShowcaseView extends GetView<ShowcaseController> {
  var digimonIndex = Get.arguments;
  final DigilistController _controller = Get.put(DigilistController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _controller.digilist[digimonIndex].name.toString(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 600,
                width: 900,
                child: Image(
                    image: NetworkImage(
                        _controller.digilist[digimonIndex].img.toString()))),
            Text(
              _controller.digilist[digimonIndex].level.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
