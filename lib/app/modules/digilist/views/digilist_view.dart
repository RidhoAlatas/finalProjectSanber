import 'package:digimonapi/app/modules/showcase/views/showcase_view.dart';
import 'package:digimonapi/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/digilist_controller.dart';

class DigilistView extends GetView<DigilistController> {
  final DigilistController _controller = Get.put(DigilistController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DigilistView'),
          centerTitle: true,
        ),
        body: Obx(() {
          if (_controller.isloading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: _controller.digilist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            _controller.digilist[index].name.toString(),
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.amber,
                      )
                    ],
                  ),
                  onTap: (){Get.toNamed(Routes.SHOWCASE,arguments: index);},
                );
              });
        }));
  }
}
