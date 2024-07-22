import 'package:fluttter_clean_architecture_sample/data/local_database/local_database.dart';
import 'package:fluttter_clean_architecture_sample/data/mappers/document_mapper.dart';
import 'package:fluttter_clean_architecture_sample/domain/entities/document.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/document_repository.dart';
import 'package:sqflite/sqflite.dart';

class DocumentRepositoryImpl implements DocumentRepository {
  final LocalDatabase localDatabase;

  DocumentRepositoryImpl(this.localDatabase);

  @override
  Future<bool> saveDocument(Document document) async {
    final db = await localDatabase.database;
    await db.insert('documents', DocumentMapper.toJson(document),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return true;
  }

  @override
  Future<List<Document>> getDocuments() async {
    final db = await localDatabase.database;
    final List<Map<String, dynamic>> maps = await db.query('documents');
    return maps.map((map) => DocumentMapper.fromJson(map)).toList();
  }
}
