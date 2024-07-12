// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_post_manage_gql/src/__generated__/post_manage_queries.ast.gql.dart'
    as _i5;
import 'package:arre_post_manage_gql/src/__generated__/post_manage_queries.data.gql.dart'
    as _i2;
import 'package:arre_post_manage_gql/src/__generated__/post_manage_queries.var.gql.dart'
    as _i3;
import 'package:arre_post_manage_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'post_manage_queries.req.gql.g.dart';

abstract class GGetLanguagesReq
    implements
        Built<GGetLanguagesReq, GGetLanguagesReqBuilder>,
        _i1.OperationRequest<_i2.GGetLanguagesData, _i3.GGetLanguagesVars> {
  GGetLanguagesReq._();

  factory GGetLanguagesReq([Function(GGetLanguagesReqBuilder b) updates]) =
      _$GGetLanguagesReq;

  static void _initializeBuilder(GGetLanguagesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetLanguages',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetLanguagesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetLanguagesData? Function(
    _i2.GGetLanguagesData?,
    _i2.GGetLanguagesData?,
  )? get updateResult;
  @override
  _i2.GGetLanguagesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetLanguagesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetLanguagesData.fromJson(json);
  static Serializer<GGetLanguagesReq> get serializer =>
      _$gGetLanguagesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetLanguagesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetLanguagesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetLanguagesReq.serializer,
        json,
      );
}

abstract class GBgMusicReq
    implements
        Built<GBgMusicReq, GBgMusicReqBuilder>,
        _i1.OperationRequest<_i2.GBgMusicData, _i3.GBgMusicVars> {
  GBgMusicReq._();

  factory GBgMusicReq([Function(GBgMusicReqBuilder b) updates]) = _$GBgMusicReq;

  static void _initializeBuilder(GBgMusicReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'BgMusic',
    )
    ..executeOnListen = true;
  @override
  _i3.GBgMusicVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GBgMusicData? Function(
    _i2.GBgMusicData?,
    _i2.GBgMusicData?,
  )? get updateResult;
  @override
  _i2.GBgMusicData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GBgMusicData? parseData(Map<String, dynamic> json) =>
      _i2.GBgMusicData.fromJson(json);
  static Serializer<GBgMusicReq> get serializer => _$gBgMusicReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GBgMusicReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBgMusicReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GBgMusicReq.serializer,
        json,
      );
}

abstract class GAudioInsertablesReq
    implements
        Built<GAudioInsertablesReq, GAudioInsertablesReqBuilder>,
        _i1.OperationRequest<_i2.GAudioInsertablesData,
            _i3.GAudioInsertablesVars> {
  GAudioInsertablesReq._();

  factory GAudioInsertablesReq(
          [Function(GAudioInsertablesReqBuilder b) updates]) =
      _$GAudioInsertablesReq;

  static void _initializeBuilder(GAudioInsertablesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AudioInsertables',
    )
    ..executeOnListen = true;
  @override
  _i3.GAudioInsertablesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GAudioInsertablesData? Function(
    _i2.GAudioInsertablesData?,
    _i2.GAudioInsertablesData?,
  )? get updateResult;
  @override
  _i2.GAudioInsertablesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAudioInsertablesData? parseData(Map<String, dynamic> json) =>
      _i2.GAudioInsertablesData.fromJson(json);
  static Serializer<GAudioInsertablesReq> get serializer =>
      _$gAudioInsertablesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAudioInsertablesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAudioInsertablesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAudioInsertablesReq.serializer,
        json,
      );
}

abstract class GVoiceEffectsReq
    implements
        Built<GVoiceEffectsReq, GVoiceEffectsReqBuilder>,
        _i1.OperationRequest<_i2.GVoiceEffectsData, _i3.GVoiceEffectsVars> {
  GVoiceEffectsReq._();

  factory GVoiceEffectsReq([Function(GVoiceEffectsReqBuilder b) updates]) =
      _$GVoiceEffectsReq;

  static void _initializeBuilder(GVoiceEffectsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'VoiceEffects',
    )
    ..executeOnListen = true;
  @override
  _i3.GVoiceEffectsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GVoiceEffectsData? Function(
    _i2.GVoiceEffectsData?,
    _i2.GVoiceEffectsData?,
  )? get updateResult;
  @override
  _i2.GVoiceEffectsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GVoiceEffectsData? parseData(Map<String, dynamic> json) =>
      _i2.GVoiceEffectsData.fromJson(json);
  static Serializer<GVoiceEffectsReq> get serializer =>
      _$gVoiceEffectsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVoiceEffectsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVoiceEffectsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVoiceEffectsReq.serializer,
        json,
      );
}

abstract class GUserVoicepodsReq
    implements
        Built<GUserVoicepodsReq, GUserVoicepodsReqBuilder>,
        _i1.OperationRequest<_i2.GUserVoicepodsData, _i3.GUserVoicepodsVars> {
  GUserVoicepodsReq._();

  factory GUserVoicepodsReq([Function(GUserVoicepodsReqBuilder b) updates]) =
      _$GUserVoicepodsReq;

  static void _initializeBuilder(GUserVoicepodsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserVoicepods',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserVoicepodsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GUserVoicepodsData? Function(
    _i2.GUserVoicepodsData?,
    _i2.GUserVoicepodsData?,
  )? get updateResult;
  @override
  _i2.GUserVoicepodsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserVoicepodsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserVoicepodsData.fromJson(json);
  static Serializer<GUserVoicepodsReq> get serializer =>
      _$gUserVoicepodsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserVoicepodsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserVoicepodsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserVoicepodsReq.serializer,
        json,
      );
}

abstract class GMarkAsViewedReq
    implements
        Built<GMarkAsViewedReq, GMarkAsViewedReqBuilder>,
        _i1.OperationRequest<_i2.GMarkAsViewedData, _i3.GMarkAsViewedVars> {
  GMarkAsViewedReq._();

  factory GMarkAsViewedReq([Function(GMarkAsViewedReqBuilder b) updates]) =
      _$GMarkAsViewedReq;

  static void _initializeBuilder(GMarkAsViewedReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MarkAsViewed',
    )
    ..executeOnListen = true;
  @override
  _i3.GMarkAsViewedVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GMarkAsViewedData? Function(
    _i2.GMarkAsViewedData?,
    _i2.GMarkAsViewedData?,
  )? get updateResult;
  @override
  _i2.GMarkAsViewedData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMarkAsViewedData? parseData(Map<String, dynamic> json) =>
      _i2.GMarkAsViewedData.fromJson(json);
  static Serializer<GMarkAsViewedReq> get serializer =>
      _$gMarkAsViewedReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMarkAsViewedReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsViewedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMarkAsViewedReq.serializer,
        json,
      );
}

abstract class GMarkAsPlayedReq
    implements
        Built<GMarkAsPlayedReq, GMarkAsPlayedReqBuilder>,
        _i1.OperationRequest<_i2.GMarkAsPlayedData, _i3.GMarkAsPlayedVars> {
  GMarkAsPlayedReq._();

  factory GMarkAsPlayedReq([Function(GMarkAsPlayedReqBuilder b) updates]) =
      _$GMarkAsPlayedReq;

  static void _initializeBuilder(GMarkAsPlayedReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'MarkAsPlayed',
    )
    ..executeOnListen = true;
  @override
  _i3.GMarkAsPlayedVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GMarkAsPlayedData? Function(
    _i2.GMarkAsPlayedData?,
    _i2.GMarkAsPlayedData?,
  )? get updateResult;
  @override
  _i2.GMarkAsPlayedData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GMarkAsPlayedData? parseData(Map<String, dynamic> json) =>
      _i2.GMarkAsPlayedData.fromJson(json);
  static Serializer<GMarkAsPlayedReq> get serializer =>
      _$gMarkAsPlayedReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GMarkAsPlayedReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GMarkAsPlayedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GMarkAsPlayedReq.serializer,
        json,
      );
}

abstract class GCreateVoicepodReq
    implements
        Built<GCreateVoicepodReq, GCreateVoicepodReqBuilder>,
        _i1.OperationRequest<_i2.GCreateVoicepodData, _i3.GCreateVoicepodVars> {
  GCreateVoicepodReq._();

  factory GCreateVoicepodReq([Function(GCreateVoicepodReqBuilder b) updates]) =
      _$GCreateVoicepodReq;

  static void _initializeBuilder(GCreateVoicepodReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreateVoicepod',
    )
    ..executeOnListen = true;
  @override
  _i3.GCreateVoicepodVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GCreateVoicepodData? Function(
    _i2.GCreateVoicepodData?,
    _i2.GCreateVoicepodData?,
  )? get updateResult;
  @override
  _i2.GCreateVoicepodData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GCreateVoicepodData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateVoicepodData.fromJson(json);
  static Serializer<GCreateVoicepodReq> get serializer =>
      _$gCreateVoicepodReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreateVoicepodReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GCreateVoicepodReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreateVoicepodReq.serializer,
        json,
      );
}

abstract class GGetVoicepodDetailsReq
    implements
        Built<GGetVoicepodDetailsReq, GGetVoicepodDetailsReqBuilder>,
        _i1.OperationRequest<_i2.GGetVoicepodDetailsData,
            _i3.GGetVoicepodDetailsVars> {
  GGetVoicepodDetailsReq._();

  factory GGetVoicepodDetailsReq(
          [Function(GGetVoicepodDetailsReqBuilder b) updates]) =
      _$GGetVoicepodDetailsReq;

  static void _initializeBuilder(GGetVoicepodDetailsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetVoicepodDetails',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetVoicepodDetailsVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GGetVoicepodDetailsData? Function(
    _i2.GGetVoicepodDetailsData?,
    _i2.GGetVoicepodDetailsData?,
  )? get updateResult;
  @override
  _i2.GGetVoicepodDetailsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetVoicepodDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetVoicepodDetailsData.fromJson(json);
  static Serializer<GGetVoicepodDetailsReq> get serializer =>
      _$gGetVoicepodDetailsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetVoicepodDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetVoicepodDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetVoicepodDetailsReq.serializer,
        json,
      );
}

abstract class GDeleteVoicepodReq
    implements
        Built<GDeleteVoicepodReq, GDeleteVoicepodReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteVoicepodData, _i3.GDeleteVoicepodVars> {
  GDeleteVoicepodReq._();

  factory GDeleteVoicepodReq([Function(GDeleteVoicepodReqBuilder b) updates]) =
      _$GDeleteVoicepodReq;

  static void _initializeBuilder(GDeleteVoicepodReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'DeleteVoicepod',
    )
    ..executeOnListen = true;
  @override
  _i3.GDeleteVoicepodVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GDeleteVoicepodData? Function(
    _i2.GDeleteVoicepodData?,
    _i2.GDeleteVoicepodData?,
  )? get updateResult;
  @override
  _i2.GDeleteVoicepodData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GDeleteVoicepodData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteVoicepodData.fromJson(json);
  static Serializer<GDeleteVoicepodReq> get serializer =>
      _$gDeleteVoicepodReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GDeleteVoicepodReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GDeleteVoicepodReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GDeleteVoicepodReq.serializer,
        json,
      );
}

abstract class GPostCommentReq
    implements
        Built<GPostCommentReq, GPostCommentReqBuilder>,
        _i1.OperationRequest<_i2.GPostCommentData, _i3.GPostCommentVars> {
  GPostCommentReq._();

  factory GPostCommentReq([Function(GPostCommentReqBuilder b) updates]) =
      _$GPostCommentReq;

  static void _initializeBuilder(GPostCommentReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PostComment',
    )
    ..executeOnListen = true;
  @override
  _i3.GPostCommentVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GPostCommentData? Function(
    _i2.GPostCommentData?,
    _i2.GPostCommentData?,
  )? get updateResult;
  @override
  _i2.GPostCommentData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPostCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GPostCommentData.fromJson(json);
  static Serializer<GPostCommentReq> get serializer =>
      _$gPostCommentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostCommentReq.serializer,
        json,
      );
}

abstract class GPostCommentReplyReq
    implements
        Built<GPostCommentReplyReq, GPostCommentReplyReqBuilder>,
        _i1.OperationRequest<_i2.GPostCommentReplyData,
            _i3.GPostCommentReplyVars> {
  GPostCommentReplyReq._();

  factory GPostCommentReplyReq(
          [Function(GPostCommentReplyReqBuilder b) updates]) =
      _$GPostCommentReplyReq;

  static void _initializeBuilder(GPostCommentReplyReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'PostCommentReply',
    )
    ..executeOnListen = true;
  @override
  _i3.GPostCommentReplyVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GPostCommentReplyData? Function(
    _i2.GPostCommentReplyData?,
    _i2.GPostCommentReplyData?,
  )? get updateResult;
  @override
  _i2.GPostCommentReplyData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GPostCommentReplyData? parseData(Map<String, dynamic> json) =>
      _i2.GPostCommentReplyData.fromJson(json);
  static Serializer<GPostCommentReplyReq> get serializer =>
      _$gPostCommentReplyReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostCommentReplyReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostCommentReplyReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostCommentReplyReq.serializer,
        json,
      );
}

abstract class GPostDetailsReq
    implements
        Built<GPostDetailsReq, GPostDetailsReqBuilder>,
        _i1.FragmentRequest<_i2.GPostDetailsData, _i3.GPostDetailsVars> {
  GPostDetailsReq._();

  factory GPostDetailsReq([Function(GPostDetailsReqBuilder b) updates]) =
      _$GPostDetailsReq;

  static void _initializeBuilder(GPostDetailsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'PostDetails';
  @override
  _i3.GPostDetailsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GPostDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GPostDetailsData.fromJson(json);
  static Serializer<GPostDetailsReq> get serializer =>
      _$gPostDetailsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GPostDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostDetailsReq.serializer,
        json,
      );
}

abstract class GVPCommentReq
    implements
        Built<GVPCommentReq, GVPCommentReqBuilder>,
        _i1.FragmentRequest<_i2.GVPCommentData, _i3.GVPCommentVars> {
  GVPCommentReq._();

  factory GVPCommentReq([Function(GVPCommentReqBuilder b) updates]) =
      _$GVPCommentReq;

  static void _initializeBuilder(GVPCommentReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'VPComment';
  @override
  _i3.GVPCommentVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GVPCommentData? parseData(Map<String, dynamic> json) =>
      _i2.GVPCommentData.fromJson(json);
  static Serializer<GVPCommentReq> get serializer => _$gVPCommentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVPCommentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVPCommentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVPCommentReq.serializer,
        json,
      );
}

abstract class GVPCommentReplyReq
    implements
        Built<GVPCommentReplyReq, GVPCommentReplyReqBuilder>,
        _i1.FragmentRequest<_i2.GVPCommentReplyData, _i3.GVPCommentReplyVars> {
  GVPCommentReplyReq._();

  factory GVPCommentReplyReq([Function(GVPCommentReplyReqBuilder b) updates]) =
      _$GVPCommentReplyReq;

  static void _initializeBuilder(GVPCommentReplyReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'VPCommentReply';
  @override
  _i3.GVPCommentReplyVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GVPCommentReplyData? parseData(Map<String, dynamic> json) =>
      _i2.GVPCommentReplyData.fromJson(json);
  static Serializer<GVPCommentReplyReq> get serializer =>
      _$gVPCommentReplyReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GVPCommentReplyReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GVPCommentReplyReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GVPCommentReplyReq.serializer,
        json,
      );
}

abstract class GLanguageReq
    implements
        Built<GLanguageReq, GLanguageReqBuilder>,
        _i1.FragmentRequest<_i2.GLanguageData, _i3.GLanguageVars> {
  GLanguageReq._();

  factory GLanguageReq([Function(GLanguageReqBuilder b) updates]) =
      _$GLanguageReq;

  static void _initializeBuilder(GLanguageReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'Language';
  @override
  _i3.GLanguageVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GLanguageData? parseData(Map<String, dynamic> json) =>
      _i2.GLanguageData.fromJson(json);
  static Serializer<GLanguageReq> get serializer => _$gLanguageReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLanguageReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GLanguageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLanguageReq.serializer,
        json,
      );
}
