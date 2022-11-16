import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Model
{
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  RxInt sum=0.obs;

  void total(String a,String b)
  {
    sum.value=int.parse(a)+int.parse(b);
  }
}