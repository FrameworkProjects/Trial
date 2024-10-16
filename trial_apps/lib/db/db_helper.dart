import 'dart:math';

import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart';
import 'package:trial_apps/model/todo_card.dart';

class DbHelper {
  dynamic database;

  Future<Database> get getdatabase async {
    if (database != null) return database!;

    // If the database doesn't exist, initialize it
    database = await initDatabase();
    return database;
  }

  Future<Database> initDatabase() async {
    return await openDatabase(
      path.join(await getDatabasesPath(), "todo1.db"),
      version: 1,
      onCreate: _oncreate,
    );
  }

  Future<void> _oncreate(Database db, int version) async {
    await db.execute('''
  CREATE TABLE Card(
  title TEXT,
  description TEXT,
  date TEXT
);''');
  }

  Future<int> insertCard(ToDoCard cardObj) async {
    Database db = await getdatabase;
    
    return await db.insert('Card', cardObj.cardMap());
  }

  //RETRIEVE
  Future<List<ToDoCard>> retriveCard() async {
    final localDB = await getdatabase;
    List<Map<String, dynamic>> todomaplist = await localDB.query("Card");
    return List.generate(todomaplist.length, (i) {
      return ToDoCard(
          title: todomaplist[i]['title'],
          description: todomaplist[i]['description'],
          date: todomaplist[i]['date']);
    });
  }
}
