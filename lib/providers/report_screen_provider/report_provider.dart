import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/arre_exceptions.dart';
import 'package:arre_frontend_flutter/screens/report_screens/report_screen.dart';
import 'package:arre_user_manage_gql/arre_user_manage_gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utils/utils.dart';

final reportProvider =
    ChangeNotifierProvider.autoDispose((ref) => ReportProvider());

class ReportProvider with ChangeNotifier {
  List<GGetReportsCategoriesData_response_data>? _data;
  dynamic _error;
  bool _isLoading = true;
  Set<String> _selectedCategories = {};
  late final ReportEntityType entityType;
  late final String entityId;
  late final String userId;
  late final String? communityId;

  ReportProvider() {
    init();
  }

  bool get hasData => _data != null;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  List<GGetReportsCategoriesData_response_data>? get data => _data;

  Set<String> get selectedCategories => _selectedCategories;

  dynamic get error => _error;

  Future<void> init() async {
    try {
      _data = await ApiService.instance.getReportsCategories();
    } catch (err, st) {
      _error = err;
      Utils.reportError(err, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  bool isSelected(String selectedCategory) {
    return _selectedCategories.contains(selectedCategory);
  }

  void changeSelection(String selectedCategory) {
    if (_selectedCategories.contains(selectedCategory)) {
      _selectedCategories.remove(selectedCategory);
    } else {
      _selectedCategories.add(selectedCategory);
    }
    notifyListeners();
  }

  Future<void> submitReport({
    required void Function(String message) onSuccess,
    required void Function(dynamic error) onError,
  }) async {
    try {
      String? message;
      final reasons = _selectedCategories.toList();
      if (communityId != null) {
        message = await ApiService.instance.reportCommunityEntity(
          communityId: communityId!,
          entityId: entityId,
          entityType: entityType.communityEntityType,
          reasons: reasons,
        );
      } else {
        switch (entityType) {
          case ReportEntityType.user:
            message = await ApiService.instance.reportUser(
              userId: userId,
              types: reasons,
            );
            break;
          case ReportEntityType.voicepod:
            message = await ApiService.instance.reportVoicepod(
              postId: entityId,
              types: reasons,
            );
            break;
          case ReportEntityType.comment:
          case ReportEntityType.reply:
            message = await ApiService.instance.reportCommentOrReply(
              entityType: entityType.name,
              entityId: entityId,
              types: reasons,
            );
            break;
          default:
            throw UnimplementedError(AExceptionKey.UNIMPLEMENTED);
        }
      }
      message ??= "Thanks for reporting";
      onSuccess(message);
    } catch (err, st) {
      Utils.reportError(err, st);
      onError(err);
    }
  }

  void setReportInfo({
    required ReportEntityType entityType,
    required String entityId,
    required String userId,
    required String? communityId,
  }) {
    this.entityType = entityType;
    this.entityId = entityId;
    this.userId = userId;
    this.communityId = communityId;
  }
}
