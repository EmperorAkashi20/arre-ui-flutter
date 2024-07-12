import 'package:isar/isar.dart';

part 'search_history.g.dart';

@collection
class SearchHistoryItem {
  Id id = Isar.autoIncrement;
  String? searchQuery;
  DateTime? updatedOn;
}
