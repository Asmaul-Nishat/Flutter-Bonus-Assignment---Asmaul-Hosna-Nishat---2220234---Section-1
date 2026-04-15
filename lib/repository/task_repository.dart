import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/task_model.dart';

class TaskRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final String collectionPath = "tasks";


  Future<void> addTask(TaskModel task) async {
    await _firestore.collection(collectionPath).add(task.toMap());
  }

  Future<void> deleteTask(String id) async {
    await _firestore.collection(collectionPath).doc(id).delete();
  }

  Stream<List<TaskModel>> getTasks() {
    return _firestore
        .collection(collectionPath)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) =>
        snapshot.docs.map((doc) => TaskModel.fromFirestore(doc)).toList());
  }
}