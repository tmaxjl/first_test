// import 'dart:io';
// import 'dart:js_util';

// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:connexion/models/user.dart';
// import 'package:flutter/widgets.dart';

// class dbHelper {
//   // static final dbHelper _instance = new dbHelper.internal();
//   // factory dbHelper() => _instance;

//   // final Database _db;

//   Future<Database> get db async {
//     // if (_db != null) {
//     //   return _db;
//     // }
//     // _db = await initDb();
//     // return _db;

//     WidgetsFlutterBinding.ensureInitialized();
// // Open the database and store the reference.
//     final db = openDatabase(
//       // Set the path to the database. Note: Using the `join` function from the
//       // `path` package is best practice to ensure the path is correctly
//       // constructed for each platform.
//       join(await getDatabasesPath(), 'doggie_database.db'),
//       onCreate: (db, version) {
//         // Run the CREATE TABLE statement on the database.
//         return db.execute(
//           'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
//         );
//       },
//     );
//     print("table cree");
//     return db;
//   }

//   // dbHelper.internal();

//   // initDb() async {
//   //   Directory documentDirectory = await getApplicationDocumentsDirectory();
//   //   String path = join(documentDirectory.path, "main.db");
//   //   var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
//   //   return ourDb;
//   // }

//   // void _onCreate(Database db, int version) async {
//   //   await db.execute(
//   //       "CREATE TABLE User(id INTEGER PRIMARY KEY, email TEXT, password TEXT)");
//   //   print("Table is created");
//   // }

//   //insertion
//   // Future<int> saveUser(User user) async {
//   //   var dbClient = await db;

//   //   int res = await dbClient.insert("User", user.toMap());
//   //   print(res);
//   //   return res;
//   // }

//   // //deletion
//   // Future<int> deleteUser(User user) async {
//   //   var dbClient = await db;
//   //   int res = await dbClient.delete("User");
//   //   return res;
//   // }

//   // Future<void> insertUser(User user) async {
//   //   var dbClient = await db;

//   //   await dbClient.insert(
//   //     'User',
//   //     user.toMap(),
//   //     conflictAlgorithm: ConflictAlgorithm.replace,
//   //   );
//   // }

//   // var max = User('maxquenum01@gmail.com', '12345azerty');

//   // Future<User> getUser(User user) async {
//   //   var dbClient = await db;

//   //   List<Map<String, dynamic>> res = await dbClient
//   //       .query("User", where: '"email" = ?', whereArgs: [user.email]);
//   //   for (var row in res) {
//   //     //print(row['id']);
//   //     return Future<User>.value(User.map(row));
//   //   }
//   //   return ;
//   // }

//   // Future<User> checkUser(User user) async {
//   //   var dbClient = await db;
//   //   List<Map<String, dynamic>> res = await dbClient.query("User",
//   //       where: '"email" = ? and "password"=?',
//   //       whereArgs: [user.email, user.password]);
//   //   print(res);
//   //   for (var row in res) {
//   //     return Future<User>.value(User.map(row));
//   //   }
//   //   return Future<User>.error("Unable to find User");
//   // }

//   // Future<List<User>> getAllUser() async {
//   //   var dbClient = await db;
//   //   List<User> users = [];
//   //   List<Map<String, dynamic>> res = await dbClient.query("User");
//   //   for (var row in res) {
//   //     //print(row['id']);
//   //     users.add(User.map(row));
//   //   }
//   //   return Future<List<User>>.value(users);
//   // }

//   // Future<int> deleteSingleUser(int id) async {
//   //   var dbClient = await db;
//   //   Future<int> res =
//   //       dbClient.delete("User", where: '"id" = ?', whereArgs: [id]);
//   //   return res;
//   // }
// }
