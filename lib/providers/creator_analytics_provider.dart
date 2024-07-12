import 'package:arre_creator_analytics_gql/arre_creator_analytics_gql.dart';
import 'package:arre_frontend_flutter/providers/provider_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../graphql/api_service.dart';
import '../../utils/utils.dart';

final voicepodLevelAnalyticsProvider = ChangeNotifierProvider.autoDispose
    .family<VoicepodLevelAnalyticsProvider, int>((ref, numberOfDays) {
  return VoicepodLevelAnalyticsProvider(numberOfDays);
});

final userlevelAnalyticsProvider = FutureProvider.autoDispose
    .family<GUserLevelAnalyticsData_response_data, int>(
        (ref, numberOfDays) async {
  final userlevelAnalytics =
      await ApiService.instance.getUserLevelAnalytics(numberOfDays);
  return userlevelAnalytics;
});

final selectedDateRangeProvider =
    StateNotifierProvider<DateRangeNotifier, String>((ref) {
  return DateRangeNotifier(last7Days);
});

class VoicepodLevelAnalyticsProvider
    with
        ChangeNotifier,
        OnScroll<GVoicepodLevelAnalyticsPaginatedData_response_data>,
        LoadOnScrollNotificationV2 {
  final int numberOfDays;
  List<GVoicepodLevelAnalyticsPaginatedData_response_data>
      _voicepodLevelAnalyticsList = [];
  bool _isLoading = true;
  dynamic _error;

  dynamic get error => _error;

  bool get hasError => error != null;

  bool get isLoading => _isLoading;

  bool get hasData => _voicepodLevelAnalyticsList.length != 0;

  List<GVoicepodLevelAnalyticsPaginatedData_response_data>?
      get voicepodLevelAnalyticsList => _voicepodLevelAnalyticsList;

  VoicepodLevelAnalyticsProvider(this.numberOfDays) {
    init();
  }

  Future<void> init() async {
    try {
      _isLoading = true;
      notifyListeners();
      _voicepodLevelAnalyticsList =
          await ApiService.instance.getVoicepodLevelAnalytics(numberOfDays);
    } catch (e, st) {
      _error = e;
      Utils.reportError(e, st);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() => init();

  @override
  Future<List<GVoicepodLevelAnalyticsPaginatedData_response_data>>
      loadNextItems() async {
    final voicepodLevelAnalytics =
        await ApiService.instance.getVoicepodLevelAnalytics(
      numberOfDays,
      after: _voicepodLevelAnalyticsList.last.createdAt,
    );
    _voicepodLevelAnalyticsList.addAll(voicepodLevelAnalytics);
    return voicepodLevelAnalytics;
  }
}

const String last7Days = "Last 7 days";
const String last30Days = "Last 30 days";
const String last6Months = "Last 6 months";
const String last1Year = "Last 1 year";

class DateRangeNotifier extends StateNotifier<String> {
  DateRangeNotifier(String state) : super(state);

  void setSelectedDateRange(String newValue) {
    state = newValue;
  }
}
