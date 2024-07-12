// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:arre_user_manage_gql/src/__generated__/queries.ast.gql.dart'
    as _i5;
import 'package:arre_user_manage_gql/src/__generated__/queries.data.gql.dart'
    as _i2;
import 'package:arre_user_manage_gql/src/__generated__/queries.var.gql.dart'
    as _i3;
import 'package:arre_user_manage_gql/src/__generated__/serializers.gql.dart'
    as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'queries.req.gql.g.dart';

abstract class GUpdatePreferencesReq
    implements
        Built<GUpdatePreferencesReq, GUpdatePreferencesReqBuilder>,
        _i1.OperationRequest<_i2.GUpdatePreferencesData,
            _i3.GUpdatePreferencesVars> {
  GUpdatePreferencesReq._();

  factory GUpdatePreferencesReq(
          [Function(GUpdatePreferencesReqBuilder b) updates]) =
      _$GUpdatePreferencesReq;

  static void _initializeBuilder(GUpdatePreferencesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdatePreferences',
    )
    ..executeOnListen = true;
  @override
  _i3.GUpdatePreferencesVars get vars;
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
  _i2.GUpdatePreferencesData? Function(
    _i2.GUpdatePreferencesData?,
    _i2.GUpdatePreferencesData?,
  )? get updateResult;
  @override
  _i2.GUpdatePreferencesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUpdatePreferencesData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdatePreferencesData.fromJson(json);
  static Serializer<GUpdatePreferencesReq> get serializer =>
      _$gUpdatePreferencesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdatePreferencesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdatePreferencesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdatePreferencesReq.serializer,
        json,
      );
}

abstract class GGetUserShortDetailsByIdV2Req
    implements
        Built<GGetUserShortDetailsByIdV2Req,
            GGetUserShortDetailsByIdV2ReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserShortDetailsByIdV2Data,
            _i3.GGetUserShortDetailsByIdV2Vars> {
  GGetUserShortDetailsByIdV2Req._();

  factory GGetUserShortDetailsByIdV2Req(
          [Function(GGetUserShortDetailsByIdV2ReqBuilder b) updates]) =
      _$GGetUserShortDetailsByIdV2Req;

  static void _initializeBuilder(GGetUserShortDetailsByIdV2ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetUserShortDetailsByIdV2',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetUserShortDetailsByIdV2Vars get vars;
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
  _i2.GGetUserShortDetailsByIdV2Data? Function(
    _i2.GGetUserShortDetailsByIdV2Data?,
    _i2.GGetUserShortDetailsByIdV2Data?,
  )? get updateResult;
  @override
  _i2.GGetUserShortDetailsByIdV2Data? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetUserShortDetailsByIdV2Data? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserShortDetailsByIdV2Data.fromJson(json);
  static Serializer<GGetUserShortDetailsByIdV2Req> get serializer =>
      _$gGetUserShortDetailsByIdV2ReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetUserShortDetailsByIdV2Req.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserShortDetailsByIdV2Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetUserShortDetailsByIdV2Req.serializer,
        json,
      );
}

abstract class GGetUserDetailsByIdV2Req
    implements
        Built<GGetUserDetailsByIdV2Req, GGetUserDetailsByIdV2ReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserDetailsByIdV2Data,
            _i3.GGetUserDetailsByIdV2Vars> {
  GGetUserDetailsByIdV2Req._();

  factory GGetUserDetailsByIdV2Req(
          [Function(GGetUserDetailsByIdV2ReqBuilder b) updates]) =
      _$GGetUserDetailsByIdV2Req;

  static void _initializeBuilder(GGetUserDetailsByIdV2ReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetUserDetailsByIdV2',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetUserDetailsByIdV2Vars get vars;
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
  _i2.GGetUserDetailsByIdV2Data? Function(
    _i2.GGetUserDetailsByIdV2Data?,
    _i2.GGetUserDetailsByIdV2Data?,
  )? get updateResult;
  @override
  _i2.GGetUserDetailsByIdV2Data? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetUserDetailsByIdV2Data? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserDetailsByIdV2Data.fromJson(json);
  static Serializer<GGetUserDetailsByIdV2Req> get serializer =>
      _$gGetUserDetailsByIdV2ReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetUserDetailsByIdV2Req.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserDetailsByIdV2Req? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetUserDetailsByIdV2Req.serializer,
        json,
      );
}

abstract class GUpdateUserProfileReq
    implements
        Built<GUpdateUserProfileReq, GUpdateUserProfileReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateUserProfileData,
            _i3.GUpdateUserProfileVars> {
  GUpdateUserProfileReq._();

  factory GUpdateUserProfileReq(
          [Function(GUpdateUserProfileReqBuilder b) updates]) =
      _$GUpdateUserProfileReq;

  static void _initializeBuilder(GUpdateUserProfileReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateUserProfile',
    )
    ..executeOnListen = true;
  @override
  _i3.GUpdateUserProfileVars get vars;
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
  _i2.GUpdateUserProfileData? Function(
    _i2.GUpdateUserProfileData?,
    _i2.GUpdateUserProfileData?,
  )? get updateResult;
  @override
  _i2.GUpdateUserProfileData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUpdateUserProfileData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateUserProfileData.fromJson(json);
  static Serializer<GUpdateUserProfileReq> get serializer =>
      _$gUpdateUserProfileReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateUserProfileReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUpdateUserProfileReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateUserProfileReq.serializer,
        json,
      );
}

abstract class GGetUserLanguageListReq
    implements
        Built<GGetUserLanguageListReq, GGetUserLanguageListReqBuilder>,
        _i1.OperationRequest<_i2.GGetUserLanguageListData,
            _i3.GGetUserLanguageListVars> {
  GGetUserLanguageListReq._();

  factory GGetUserLanguageListReq(
          [Function(GGetUserLanguageListReqBuilder b) updates]) =
      _$GGetUserLanguageListReq;

  static void _initializeBuilder(GGetUserLanguageListReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'GetUserLanguageList',
    )
    ..executeOnListen = true;
  @override
  _i3.GGetUserLanguageListVars get vars;
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
  _i2.GGetUserLanguageListData? Function(
    _i2.GGetUserLanguageListData?,
    _i2.GGetUserLanguageListData?,
  )? get updateResult;
  @override
  _i2.GGetUserLanguageListData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GGetUserLanguageListData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUserLanguageListData.fromJson(json);
  static Serializer<GGetUserLanguageListReq> get serializer =>
      _$gGetUserLanguageListReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GGetUserLanguageListReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GGetUserLanguageListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GGetUserLanguageListReq.serializer,
        json,
      );
}

abstract class GUserShortDetailsReq
    implements
        Built<GUserShortDetailsReq, GUserShortDetailsReqBuilder>,
        _i1.FragmentRequest<_i2.GUserShortDetailsData,
            _i3.GUserShortDetailsVars> {
  GUserShortDetailsReq._();

  factory GUserShortDetailsReq(
          [Function(GUserShortDetailsReqBuilder b) updates]) =
      _$GUserShortDetailsReq;

  static void _initializeBuilder(GUserShortDetailsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserShortDetails';
  @override
  _i3.GUserShortDetailsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserShortDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserShortDetailsData.fromJson(json);
  static Serializer<GUserShortDetailsReq> get serializer =>
      _$gUserShortDetailsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserShortDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserShortDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserShortDetailsReq.serializer,
        json,
      );
}

abstract class GUserDetailsReq
    implements
        Built<GUserDetailsReq, GUserDetailsReqBuilder>,
        _i1.FragmentRequest<_i2.GUserDetailsData, _i3.GUserDetailsVars> {
  GUserDetailsReq._();

  factory GUserDetailsReq([Function(GUserDetailsReqBuilder b) updates]) =
      _$GUserDetailsReq;

  static void _initializeBuilder(GUserDetailsReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserDetails';
  @override
  _i3.GUserDetailsVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserDetailsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserDetailsData.fromJson(json);
  static Serializer<GUserDetailsReq> get serializer =>
      _$gUserDetailsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserDetailsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserDetailsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserDetailsReq.serializer,
        json,
      );
}
