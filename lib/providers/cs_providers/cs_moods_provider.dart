
import 'package:arre_frontend_flutter/graphql/api_service.dart';
import 'package:arre_frontend_flutter/models/src/cs_mood.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final moodsDataFutureProvider = FutureProvider<List<Mood>>((ref) async {
  return ApiService.instance.getMoodsList();
});

// final csMoodProvider = ChangeNotifierProvider((ref) => CSMoodProvider(ref));

// class CSMoodProvider with ChangeNotifier, CSLock, CSFieldProvider {
//   final Ref _ref;
//   Mood? _selectedMood;
//   String? _bgImageMediaId;
//   final _random = Random();
//
//   CSMoodProvider(this._ref);
//
//   String? get bgImageMediaId => _bgImageMediaId;
//
//   Mood? get mood => _selectedMood;
//
//   void selectMood(Mood? mood) {
//     if (_selectedMood != mood) {
//       _selectedMood = mood;
//       _bgImageMediaId =
//           mood?.backgroundImages[_random.nextInt(mood.backgroundImages.length)];
//       notifyListeners();
//       _ref.read(creatorStudioProvider).save().then((value) {
//         _ref.read(creatorStudioProvider).validate(shouldNotify: true);
//       });
//     }
//   }
//
//   @override
//   Future<bool> canReleaseLock() {
//     return SynchronousFuture(true);
//   }
//
//   @override
//   Future<void> clear() {
//     //Restart is only for Activities
//     return SynchronousFuture(null);
//   }
//
//   @override
//   Future<void> exportToDraft(CSDraft draft) {
//     draft.mood = _selectedMood;
//     return SynchronousFuture(null);
//   }
//
//   @override
//   void import4mDraft(CSDraft draft) {
//     selectMood(draft.mood);
//   }
//
//   @override
//   bool get isGlobalEffectOrActivity => true;
//
//   @override
//   Future<CSIntegralActivity?> releaseLock(CSLock? nextLock) {
//     return SynchronousFuture(null);
//   }
//
//   @override
//   void validateWithException(CSDraft draft) {
//     if (draft.mood == null) {
//       throw CSActivityValidationException(
//           "Please select a mood to post your voicepod");
//     }
//   }
// }
