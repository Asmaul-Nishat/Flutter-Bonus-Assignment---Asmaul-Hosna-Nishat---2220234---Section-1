import 'package:flutter/material.dart';
import '../models/task_model.dart';
import '../repository/task_repository.dart';

class TaskManagementProvider extends ChangeNotifier {
  final TaskRepository _repo = TaskRepository();


  Stream<List<TaskModel>> get taskStream => _repo.getTasks();

  Future<void> addTaskExternal(TaskModel task) async {
    await _repo.addTask(task);
  }

  Future<void> deleteTask(String id) async {
    await _repo.deleteTask(id);
  }


}