import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:db_sql/item.dart';

class DbHelper {
  static DbHelper _dbHelper = DbHelper._createObject();
  static Database? _database;
  DbHelper._createObject();

  Future<Database> initDb() async {
    //untuk menentukan nama database dan lokasi yg dibuat{
      Directory directory = await getApplicationDocumentsDirectory();
      String path = directory.path + 'item.db';
      // delete if exist
      // databaseFactory.deleteDatabase(path);
      //create, read databases
      var itemDatabase = openDatabase(path, version: 1, onCreate: _createDb);
      // _database = await openDatabase(path, version: 1, onCreate: _createDb);
    //mengembalikan nilai object sebagai hasil dari fungsinya
    return itemDatabase; 
  }
  Future<void> dropDb() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'item.db';
    _database = null;
    databaseFactory.deleteDatabase(path);
  }
  // getter db
  Future<Database?> get database async {
    if (_database == null) {
    _database = await initDb();
  }
  return _database;
  }
  
  // buat tabel baru dengan nama item
  void _createDb(Database db, int version) async{
    await db.execute('''
    CREATE TABLE item (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      price INTEGER,
      kodeBarang TEXT,
      stok INTEGER
    )
    ''');
  }

  // select db
  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.initDb();
    var mapList = await db.query('item', orderBy: 'name');
    return mapList;
  }

  // insert item
  Future<int> insert(Item object) async {
    Database? db = await this.database;
    int count = await db!.insert('item', object.toMap());
    return count;
  }

  // update item
  Future<int> update(Item object) async {
    Database db = await this.initDb();
    int count = await db.update('item', object.toMap(),
    where: 'id=?',
    whereArgs: [object.id]);
    return count;
  }

  // delete item
  Future<int> delete(int id) async {
    Database db = await this.initDb();
    int count = await db.delete('item',
    where: 'id=?',
    whereArgs: [id]);
    return count;
  }

  // read table
  Future<List<Item>> getItemList() async {
    var itemMapList = await select();
    int count = itemMapList.length;
    List<Item> itemList = List.empty(growable: true);
    for (int i=0; i<count; i++) {
      itemList.add(Item.fromMap(itemMapList[i]));
    }
    return itemList;
  }

  // belum tau ini apa
  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper;
  }

}



