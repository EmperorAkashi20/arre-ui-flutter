import 'dart:async';
import 'dart:io';

import 'package:arre_frontend_flutter/providers/arre_files_provider.dart';
import 'package:arre_frontend_flutter/utils/snackbars.dart';
import 'package:arre_frontend_flutter/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer' as dev;
import 'package:isar/isar.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/app_constants.dart';

part 'logs_db_provider.g.dart';

class ArreLogs {
  static Isar? _isar;

  // IsarCollection<DBLog>? _isarCollection;

  // Future<void> init() async {
  //   _isarCollection ??= await ArreLocalDb.instance.getCollection<DBLog>();
  // }

  static Future<void> log(
    String message, {
    DateTime? time,
    int? sequenceNumber,
    int level = 0,
    String name = '',
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) async {
    if (AppConfig.isProd && kReleaseMode) return;
    time ??= DateTime.now();

    dev.log(
      message,
      time: time,
      sequenceNumber: sequenceNumber,
      level: level,
      name: name,
      zone: zone,
      error: error,
      stackTrace: stackTrace,
    );
    //
    // final path = await ArreFiles.instance.getLogsDbPathV2();
    // if (_isar == null) {
    //   _isar = Isar.openSync(
    //     [DBLogSchema],
    //     directory: path,
    //     name: "arre_logs",
    //   );
    // }
    // _isar!.writeTxn(() {
    //   final dbLog = DBLog(
    //     message: message,
    //     time: time,
    //     sequenceNumber: sequenceNumber,
    //     level: level,
    //     name: name,
    //     error: error?.toString(),
    //     stackTrace: stackTrace?.toString(),
    //   );
    //   return _isar!.collection<DBLog>().put(dbLog);
    // });
  }

  static Future<void> clearLogs() async {
    final path = await ArreFiles.instance.getLogsDbPathV2();
    if (_isar == null) {
      _isar = Isar.openSync(
        [DBLogSchema],
        directory: path,
        name: "arre_logs",
      );
    }
    final logCollection = _isar!.collection<DBLog>();
    await _isar!.writeTxn(() => logCollection.clear());
    showInfoSnackBar("Cleared all logs");
  }

  static Future<void> exportLogs() async {
    await log("Exporting logs", name: "ARRE_LOGS");
    final path = await ArreFiles.instance.getLogsDbPathV2();
    if (_isar == null) {
      _isar = Isar.openSync(
        [DBLogSchema],
        directory: path,
        name: "arre_logs",
      );
    }
    final logCollection = _isar!.collection<DBLog>();
    final logFilePath = await ArreFiles.instance.generateTmpFilePath("txt");
    final logFile = File(logFilePath);
    await logFile.create(recursive: true);
    final logs = await logCollection.where().sortByTime().build().findAll();
    print("EXPORTING ${logs.length} logs");
    await logFile.writeAsString(logs.join("\n"));
    final fileString = await File(logFilePath).readAsString();
    debugPrint(fileString);
    Share.shareXFiles([XFile(logFilePath)], subject: "Arre logs");
    _isar!.writeTxn(() {
      return _isar!.collection<DBLog>().clear();
    });
  }
}

@collection
class DBLog {
  Id isarId = Isar.autoIncrement;
  final String message;
  final DateTime? time;
  final int? sequenceNumber;
  final int level;
  final String name;
  final String? error;
  final String? stackTrace;

  DBLog({
    required this.message,
    required this.time,
    required this.sequenceNumber,
    required this.level,
    required this.name,
    required this.error,
    required this.stackTrace,
  });

  @override
  String toString() {
    String str = "[$time] [$name] $message;";
    if (error.isValid) {
      str += "\n[ERROR] $error;";
    }
    if (stackTrace.isValid) {
      str += "\n[STACK_TRACE]: $stackTrace";
    }
    return str + "\n";
  }
}
