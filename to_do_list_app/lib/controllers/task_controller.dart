import 'package:get/get.dart';
import 'package:to_do_list_app/db/db_helper.dart';
import 'package:to_do_list_app/models/task.dart';

class TaskController extends GetxController{
  @override
  void onReady(){
    super.onReady();
  }

  var taskList = <Task>[].obs;

  Future<int> addTask({Task? task}) async{
    return await DBHelper.insert(task!);
  }

  void getTasks() async{
    List<Map<String,dynamic>> tasks = await DBHelper.query();
    taskList.assignAll(tasks.map((e) => Task.fromJson(e)).toList());
  }

  void delete(Task task){
    DBHelper.delete(task);
    getTasks();
  }

  void markTaskCompleted(int id) async{
    await DBHelper.update(id);
    getTasks();
  }
}
