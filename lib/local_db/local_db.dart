import 'dart:async';

import 'package:arre_frontend_flutter/models/src/search_history.dart';
import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:isar/isar.dart';

class ArreLocalDb {
  static const CS_DB_INSTANCE_V2 = "cs_db_v2";
  Isar? _isar;
  static ArreLocalDb instance = ArreLocalDb._();

  ArreLocalDb._();

  Future<Isar> _init() async {
    _isar ??= await Isar.open(
      [
        SearchHistoryItemSchema,
      ],
      directory: await ArreFiles.instance.getSearchDbPathV2(),
    );
    return _isar!;
  }

  ///Call this in the main
  Future<IsarCollection<T>> getCollection<T>() async {
    final isar = await _init();
    return isar.collection<T>();
  }

  Future<T> readTxn<T>(Future<T> Function(Isar isar) callback) async {
    final isar = await _init();
    return isar.txn(() => callback(isar));
  }

  Future<T> writeTxn<T>(Future<T> Function(Isar isar) callback) async {
    final isar = await _init();
    return isar.writeTxn(() => callback(isar));
  }

// Future<Box<CSDraft>> openVPDraftsBox() async =>
//     Hive.openBox<CSDraft>("vp_drafts_v4");
}
