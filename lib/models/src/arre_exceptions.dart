import 'package:arre_frontend_flutter/providers/audio_player/pod_player_v3.dart';
import 'package:equatable/equatable.dart';

class ArreException with EquatableMixin implements Exception {
  final String message;
  final String? code;
  dynamic originalException;

  ArreException(
    String message, {
    this.code,
    this.originalException,
  }) : message = "$message${code != null ? " [$code]" : ""}";

  ///Check [AExceptionKey] for all the keys
  ArreException.key(String this.code) : message = "Error occurred [$code]";

  Iterable<Object> get information => const [];

  dynamic get reason => originalException;

  @override
  List<Object?> get props => [message];
}

class PodInitException extends ArreException {
  final Future<PodPlayerSource> Function() podSourceFuture;
  final int? startIndex;

  PodInitException({
    required String message,
    String? code,
    required this.podSourceFuture,
    required this.startIndex,
  }) : super(message, code: code);
}

class ArreIgnoreException extends ArreException {
  ArreIgnoreException(super.message);
}

class CSTimeLimitException extends ArreException {
  CSTimeLimitException() : super("You've reached max limit of 30 seconds");
}

class CSLockException extends ArreException {
  CSLockException(super.message);
}

abstract class CSValidationException extends ArreException {
  CSValidationException(super.message);
}

class CSActivityValidationException extends CSValidationException {
  CSActivityValidationException(super.message);
}

class CSFormValidationException extends CSValidationException {
  dynamic reason;

  CSFormValidationException(super.message, {this.reason});
}

class CSFileNotFoundException extends ArreException {
  CSFileNotFoundException.key(String code) : super.key(code);
}

class FFmpegException extends ArreException {
  final Iterable<String> logs;

  FFmpegException(this.logs) : super.key(AExceptionKey.FFMPEG_EXECUTION_FAILED);

  @override
  Iterable<Object> get information => logs;
}

abstract class AExceptionKey {
  static const MISMATCH_LOCKS = "E001";
  static const CAN_NOT_RELEASE_LOCK = "E002";
  static const FAILED_TO_UNLOCK = "E003";
  static const CS_VALIDATION_ERROR = "E004";
  static const NO_INPUT_FOR_FFMPEG = "E005";
  static const FILE_FORMAT_NOT_SUPPORTED = "E006";
  static const EMPTY_FILE = "E007";
  static const FFMPEG_EXECUTION_FAILED = "E008";
  static const ISAR_DB_NOT_INITIALIZED = "E009";
  static const MIC_RECORDING_FILE_NOT_FOUND = "E010";
  static const MEDIA_ATTACHMENT_FILE_NOT_FOUND = "E011";
  static const MEDIA_ATTACHMENT_THUMBNAIL_FILE_NOT_FOUND = "E012";
  static const DRAFT_RECOVERY_FAILED = "E013";
  static const WEBVIEW_FAILED = "E014";
  static const HTTP_API_HANDLE_ERROR = "E015";
  static const NO_HTTP_STATUS_CODE = "E016";

  ///When user has not selected languages and tries to use the app
  ///This shouldn't happen since we're showing the non-dismissible language selection sheet
  static const NO_LANGUAGE_SELECTED = "E017";

  ///When completer is not completed in the finally block
  static const FUTURE_NOT_COMPLETED = "E018";

  static const VOICEPOD_NOT_FOUND = "E019";

  ///When user is selecting Community only privacy without selecting community
  static const COMMUNITY_NOT_SELECTED = "E020";

  static const ENTITY_ID_OR_MESSAGE_NOT_PROVIDED = "E021";

  static const UNIMPLEMENTED = "E022";

  ///GA Event is tried to logged from different screen
  static const GA_EVENT_4M_UNKNOWN_SCREEN = "E023";

  static var FIREBASE_TOKEN_INVALID = "E024";

  //#################### POD PLAYER ERRORS E1** ####################

  ///Use case - click on playlist thumbnail's play button, and there are no pods in the playlist
  static const NO_PODS_IN_PLAYLIST = "E100";

  ///When trying to get first item info without pod source being set. This is handled btw and shouldn't happen
  static const NO_POD_SOURCE_FOUND = "E101";

  ///When playing playlist with [PodPlaylistWithPostIDs] as source, the initial
  static const PLAYLIST_WITH_INVALID_PODS = "E102";
}
