import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/model.dart';
class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Model m=Get.put(Model());

    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Demo"),
      ),
      body: Column(
        children: [
          TextField(controller: m.t1,),
          TextField(controller: m.t2,),
          ElevatedButton(onPressed: () {
            m.total(m.t1.text,m.t2.text);
          }, child: Text("SUM")),
          Obx(() => Text("Sum=${m.sum}"))
        ],
      ),
    );
  }
}
