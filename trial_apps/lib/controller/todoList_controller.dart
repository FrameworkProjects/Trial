import 'dart:developer';

import 'package:get/get.dart';
import 'package:trial_apps/db/db_helper.dart';
import 'package:trial_apps/model/todo_card.dart';

List<ToDoCard> todoList = [];

class ListController extends GetxController {
  var len = todoList.length.obs;
  void getList() async {
    todoList = await DbHelper().retriveCard();
    len = todoList.length.obs;
    log("In getList ${len.value}");
  }
}
