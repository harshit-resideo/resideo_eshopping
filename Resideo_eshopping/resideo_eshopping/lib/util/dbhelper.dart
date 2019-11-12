import 'package:resideo_eshopping/model/eshopping_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

class Dbhelper
{

  static final Dbhelper _helper=Dbhelper.private();

  String tblname='product';
  String colid="id";
  String coltitle="title";
  String cols_desc="s_desc";
  String colimg="img";
  String colprice="price";
  String colquantity="quantity";
  String coll_desc="l_desc";
  String colcategory="category";
  String colrating="rating";
  String colreview="review";

  Dbhelper.private();

  factory Dbhelper()
  {
    return _helper;
  }

  Database _db;

  Future<Database> get db async{
     if(_db==null)
     _db=await initializedb();
     return _db;
  }

  Future<Database> initializedb() async
  {
    Directory dir= await getApplicationDocumentsDirectory();
    String path=dir.path+'eshoppingdb.db';
    var eshoppingdb=await openDatabase(path, version: 1, onCreate: _createdb);
    return eshoppingdb;
  }

  void _createdb(Database db,int newversion) async
  {
     return await db.execute('CREATE TABLE $tblname($colid INTEGER PRIMARY KEY,$coltitle TEXT,$cols_desc TEXT,$colimg TEXT,$colprice INTEGER,$colquantity INTEGER,$coll_desc TEXT,$colcategory TEXT,$colrating INTEGER,$colreview TEXT)');
  }
  
  Future<int> insertdb(Product pd) async{
    Database db=await this.db;
    var result=db.insert(tblname, pd.tomap());
    return result;
  }

  Future<List> getdb() async{
    Database db=await this.db;
    var result= db.rawQuery('SELECT * FROM $tblname');
    return result;
  }

  Future<int> getCount() async{
    Database db=await this.db;
    var result=Sqflite.firstIntValue(
      await db.rawQuery('SELECT Count(*) FROM $tblname')
    );
    return result;
  }

  Future<int> updatedb(Product pd) async{
    Database db= await this.db;
    var result = db.update(tblname, pd.tomap(),where: "$colid= ?",whereArgs: [pd.id]);
    return result;
  }

  Future<int> deletedb(int id) async{
    Database db= await this.db;
    var result=db.rawDelete('DELETE FROM $tblname WHERE $colid = $id');
    return result;
  }
}