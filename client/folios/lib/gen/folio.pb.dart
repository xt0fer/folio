///
//  Generated code. Do not modify.
//  source: folio.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/field_mask.pb.dart' as $0;
import 'infoblox/api/collection_operators.pb.dart' as $1;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('User', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'email')
    ..aOS(3, 'firstname')
    ..aOS(4, 'lastname')
    ..a<Asset>(14, 'thumbnail', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  User() : super();
  User.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  User.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  User clone() => new User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  static User create() => new User();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => new $pb.PbList<User>();
  static User getDefault() => _defaultInstance ??= create()..freeze();
  static User _defaultInstance;
  static void $checkItem(User v) {
    if (v is! User) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get email => $_getS(1, '');
  set email(String v) { $_setString(1, v); }
  bool hasEmail() => $_has(1);
  void clearEmail() => clearField(2);

  String get firstname => $_getS(2, '');
  set firstname(String v) { $_setString(2, v); }
  bool hasFirstname() => $_has(2);
  void clearFirstname() => clearField(3);

  String get lastname => $_getS(3, '');
  set lastname(String v) { $_setString(3, v); }
  bool hasLastname() => $_has(3);
  void clearLastname() => clearField(4);

  Asset get thumbnail => $_getN(4);
  set thumbnail(Asset v) { setField(14, v); }
  bool hasThumbnail() => $_has(4);
  void clearThumbnail() => clearField(14);
}

class CreateUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateUserRequest', package: const $pb.PackageName('folio'))
    ..a<User>(1, 'payload', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..hasRequiredFields = false
  ;

  CreateUserRequest() : super();
  CreateUserRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateUserRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateUserRequest clone() => new CreateUserRequest()..mergeFromMessage(this);
  CreateUserRequest copyWith(void Function(CreateUserRequest) updates) => super.copyWith((message) => updates(message as CreateUserRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateUserRequest create() => new CreateUserRequest();
  CreateUserRequest createEmptyInstance() => create();
  static $pb.PbList<CreateUserRequest> createRepeated() => new $pb.PbList<CreateUserRequest>();
  static CreateUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateUserRequest _defaultInstance;
  static void $checkItem(CreateUserRequest v) {
    if (v is! CreateUserRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  User get payload => $_getN(0);
  set payload(User v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);
}

class CreateUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateUserResponse', package: const $pb.PackageName('folio'))
    ..a<User>(1, 'result', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..hasRequiredFields = false
  ;

  CreateUserResponse() : super();
  CreateUserResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateUserResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateUserResponse clone() => new CreateUserResponse()..mergeFromMessage(this);
  CreateUserResponse copyWith(void Function(CreateUserResponse) updates) => super.copyWith((message) => updates(message as CreateUserResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateUserResponse create() => new CreateUserResponse();
  CreateUserResponse createEmptyInstance() => create();
  static $pb.PbList<CreateUserResponse> createRepeated() => new $pb.PbList<CreateUserResponse>();
  static CreateUserResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateUserResponse _defaultInstance;
  static void $checkItem(CreateUserResponse v) {
    if (v is! CreateUserResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  User get result => $_getN(0);
  set result(User v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class ReadUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadUserRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReadUserRequest() : super();
  ReadUserRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadUserRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadUserRequest clone() => new ReadUserRequest()..mergeFromMessage(this);
  ReadUserRequest copyWith(void Function(ReadUserRequest) updates) => super.copyWith((message) => updates(message as ReadUserRequest));
  $pb.BuilderInfo get info_ => _i;
  static ReadUserRequest create() => new ReadUserRequest();
  ReadUserRequest createEmptyInstance() => create();
  static $pb.PbList<ReadUserRequest> createRepeated() => new $pb.PbList<ReadUserRequest>();
  static ReadUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReadUserRequest _defaultInstance;
  static void $checkItem(ReadUserRequest v) {
    if (v is! ReadUserRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class ReadUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadUserResponse', package: const $pb.PackageName('folio'))
    ..a<User>(1, 'result', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..hasRequiredFields = false
  ;

  ReadUserResponse() : super();
  ReadUserResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadUserResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadUserResponse clone() => new ReadUserResponse()..mergeFromMessage(this);
  ReadUserResponse copyWith(void Function(ReadUserResponse) updates) => super.copyWith((message) => updates(message as ReadUserResponse));
  $pb.BuilderInfo get info_ => _i;
  static ReadUserResponse create() => new ReadUserResponse();
  ReadUserResponse createEmptyInstance() => create();
  static $pb.PbList<ReadUserResponse> createRepeated() => new $pb.PbList<ReadUserResponse>();
  static ReadUserResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ReadUserResponse _defaultInstance;
  static void $checkItem(ReadUserResponse v) {
    if (v is! ReadUserResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  User get result => $_getN(0);
  set result(User v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class UpdateUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateUserRequest', package: const $pb.PackageName('folio'))
    ..a<User>(1, 'payload', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..a<$0.FieldMask>(2, 'gerogeriGegege', $pb.PbFieldType.OM, $0.FieldMask.getDefault, $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateUserRequest() : super();
  UpdateUserRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateUserRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateUserRequest clone() => new UpdateUserRequest()..mergeFromMessage(this);
  UpdateUserRequest copyWith(void Function(UpdateUserRequest) updates) => super.copyWith((message) => updates(message as UpdateUserRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateUserRequest create() => new UpdateUserRequest();
  UpdateUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserRequest> createRepeated() => new $pb.PbList<UpdateUserRequest>();
  static UpdateUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateUserRequest _defaultInstance;
  static void $checkItem(UpdateUserRequest v) {
    if (v is! UpdateUserRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  User get payload => $_getN(0);
  set payload(User v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);

  $0.FieldMask get gerogeriGegege => $_getN(1);
  set gerogeriGegege($0.FieldMask v) { setField(2, v); }
  bool hasGerogeriGegege() => $_has(1);
  void clearGerogeriGegege() => clearField(2);
}

class UpdateUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateUserResponse', package: const $pb.PackageName('folio'))
    ..a<User>(1, 'result', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..hasRequiredFields = false
  ;

  UpdateUserResponse() : super();
  UpdateUserResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateUserResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateUserResponse clone() => new UpdateUserResponse()..mergeFromMessage(this);
  UpdateUserResponse copyWith(void Function(UpdateUserResponse) updates) => super.copyWith((message) => updates(message as UpdateUserResponse));
  $pb.BuilderInfo get info_ => _i;
  static UpdateUserResponse create() => new UpdateUserResponse();
  UpdateUserResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateUserResponse> createRepeated() => new $pb.PbList<UpdateUserResponse>();
  static UpdateUserResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateUserResponse _defaultInstance;
  static void $checkItem(UpdateUserResponse v) {
    if (v is! UpdateUserResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  User get result => $_getN(0);
  set result(User v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class DeleteUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteUserRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DeleteUserRequest() : super();
  DeleteUserRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteUserRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteUserRequest clone() => new DeleteUserRequest()..mergeFromMessage(this);
  DeleteUserRequest copyWith(void Function(DeleteUserRequest) updates) => super.copyWith((message) => updates(message as DeleteUserRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteUserRequest create() => new DeleteUserRequest();
  DeleteUserRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteUserRequest> createRepeated() => new $pb.PbList<DeleteUserRequest>();
  static DeleteUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteUserRequest _defaultInstance;
  static void $checkItem(DeleteUserRequest v) {
    if (v is! DeleteUserRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class DeleteUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteUsersRequest', package: const $pb.PackageName('folio'))
    ..p<int>(1, 'ids', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false
  ;

  DeleteUsersRequest() : super();
  DeleteUsersRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteUsersRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteUsersRequest clone() => new DeleteUsersRequest()..mergeFromMessage(this);
  DeleteUsersRequest copyWith(void Function(DeleteUsersRequest) updates) => super.copyWith((message) => updates(message as DeleteUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteUsersRequest create() => new DeleteUsersRequest();
  DeleteUsersRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteUsersRequest> createRepeated() => new $pb.PbList<DeleteUsersRequest>();
  static DeleteUsersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteUsersRequest _defaultInstance;
  static void $checkItem(DeleteUsersRequest v) {
    if (v is! DeleteUsersRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get ids => $_getList(0);
}

class DeleteUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteUserResponse', package: const $pb.PackageName('folio'))
    ..hasRequiredFields = false
  ;

  DeleteUserResponse() : super();
  DeleteUserResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteUserResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteUserResponse clone() => new DeleteUserResponse()..mergeFromMessage(this);
  DeleteUserResponse copyWith(void Function(DeleteUserResponse) updates) => super.copyWith((message) => updates(message as DeleteUserResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteUserResponse create() => new DeleteUserResponse();
  DeleteUserResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteUserResponse> createRepeated() => new $pb.PbList<DeleteUserResponse>();
  static DeleteUserResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteUserResponse _defaultInstance;
  static void $checkItem(DeleteUserResponse v) {
    if (v is! DeleteUserResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListUserResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListUserResponse', package: const $pb.PackageName('folio'))
    ..pp<User>(1, 'results', $pb.PbFieldType.PM, User.$checkItem, User.create)
    ..a<$1.PageInfo>(2, 'pageInfo', $pb.PbFieldType.OM, $1.PageInfo.getDefault, $1.PageInfo.create)
    ..hasRequiredFields = false
  ;

  ListUserResponse() : super();
  ListUserResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListUserResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListUserResponse clone() => new ListUserResponse()..mergeFromMessage(this);
  ListUserResponse copyWith(void Function(ListUserResponse) updates) => super.copyWith((message) => updates(message as ListUserResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListUserResponse create() => new ListUserResponse();
  ListUserResponse createEmptyInstance() => create();
  static $pb.PbList<ListUserResponse> createRepeated() => new $pb.PbList<ListUserResponse>();
  static ListUserResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListUserResponse _defaultInstance;
  static void $checkItem(ListUserResponse v) {
    if (v is! ListUserResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<User> get results => $_getList(0);

  $1.PageInfo get pageInfo => $_getN(1);
  set pageInfo($1.PageInfo v) { setField(2, v); }
  bool hasPageInfo() => $_has(1);
  void clearPageInfo() => clearField(2);
}

class ListUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListUserRequest', package: const $pb.PackageName('folio'))
    ..a<$1.Filtering>(1, 'filter', $pb.PbFieldType.OM, $1.Filtering.getDefault, $1.Filtering.create)
    ..a<$1.Sorting>(2, 'orderBy', $pb.PbFieldType.OM, $1.Sorting.getDefault, $1.Sorting.create)
    ..a<$1.FieldSelection>(3, 'fields', $pb.PbFieldType.OM, $1.FieldSelection.getDefault, $1.FieldSelection.create)
    ..a<$1.Pagination>(4, 'paging', $pb.PbFieldType.OM, $1.Pagination.getDefault, $1.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListUserRequest() : super();
  ListUserRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListUserRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListUserRequest clone() => new ListUserRequest()..mergeFromMessage(this);
  ListUserRequest copyWith(void Function(ListUserRequest) updates) => super.copyWith((message) => updates(message as ListUserRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListUserRequest create() => new ListUserRequest();
  ListUserRequest createEmptyInstance() => create();
  static $pb.PbList<ListUserRequest> createRepeated() => new $pb.PbList<ListUserRequest>();
  static ListUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListUserRequest _defaultInstance;
  static void $checkItem(ListUserRequest v) {
    if (v is! ListUserRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  $1.Filtering get filter => $_getN(0);
  set filter($1.Filtering v) { setField(1, v); }
  bool hasFilter() => $_has(0);
  void clearFilter() => clearField(1);

  $1.Sorting get orderBy => $_getN(1);
  set orderBy($1.Sorting v) { setField(2, v); }
  bool hasOrderBy() => $_has(1);
  void clearOrderBy() => clearField(2);

  $1.FieldSelection get fields => $_getN(2);
  set fields($1.FieldSelection v) { setField(3, v); }
  bool hasFields() => $_has(2);
  void clearFields() => clearField(3);

  $1.Pagination get paging => $_getN(3);
  set paging($1.Pagination v) { setField(4, v); }
  bool hasPaging() => $_has(3);
  void clearPaging() => clearField(4);
}

class Share extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Share', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<User>(2, 'friend', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..pp<Folio>(6, 'folios', $pb.PbFieldType.PM, Folio.$checkItem, Folio.create)
    ..a<Asset>(14, 'thumbnail', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  Share() : super();
  Share.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Share.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Share clone() => new Share()..mergeFromMessage(this);
  Share copyWith(void Function(Share) updates) => super.copyWith((message) => updates(message as Share));
  $pb.BuilderInfo get info_ => _i;
  static Share create() => new Share();
  Share createEmptyInstance() => create();
  static $pb.PbList<Share> createRepeated() => new $pb.PbList<Share>();
  static Share getDefault() => _defaultInstance ??= create()..freeze();
  static Share _defaultInstance;
  static void $checkItem(Share v) {
    if (v is! Share) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  User get friend => $_getN(1);
  set friend(User v) { setField(2, v); }
  bool hasFriend() => $_has(1);
  void clearFriend() => clearField(2);

  List<Folio> get folios => $_getList(2);

  Asset get thumbnail => $_getN(3);
  set thumbnail(Asset v) { setField(14, v); }
  bool hasThumbnail() => $_has(3);
  void clearThumbnail() => clearField(14);
}

class CreateShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateShareRequest', package: const $pb.PackageName('folio'))
    ..a<Share>(1, 'payload', $pb.PbFieldType.OM, Share.getDefault, Share.create)
    ..hasRequiredFields = false
  ;

  CreateShareRequest() : super();
  CreateShareRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateShareRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateShareRequest clone() => new CreateShareRequest()..mergeFromMessage(this);
  CreateShareRequest copyWith(void Function(CreateShareRequest) updates) => super.copyWith((message) => updates(message as CreateShareRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateShareRequest create() => new CreateShareRequest();
  CreateShareRequest createEmptyInstance() => create();
  static $pb.PbList<CreateShareRequest> createRepeated() => new $pb.PbList<CreateShareRequest>();
  static CreateShareRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateShareRequest _defaultInstance;
  static void $checkItem(CreateShareRequest v) {
    if (v is! CreateShareRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Share get payload => $_getN(0);
  set payload(Share v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);
}

class CreateShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateShareResponse', package: const $pb.PackageName('folio'))
    ..a<Share>(1, 'result', $pb.PbFieldType.OM, Share.getDefault, Share.create)
    ..hasRequiredFields = false
  ;

  CreateShareResponse() : super();
  CreateShareResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateShareResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateShareResponse clone() => new CreateShareResponse()..mergeFromMessage(this);
  CreateShareResponse copyWith(void Function(CreateShareResponse) updates) => super.copyWith((message) => updates(message as CreateShareResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateShareResponse create() => new CreateShareResponse();
  CreateShareResponse createEmptyInstance() => create();
  static $pb.PbList<CreateShareResponse> createRepeated() => new $pb.PbList<CreateShareResponse>();
  static CreateShareResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateShareResponse _defaultInstance;
  static void $checkItem(CreateShareResponse v) {
    if (v is! CreateShareResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Share get result => $_getN(0);
  set result(Share v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class ReadShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadShareRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReadShareRequest() : super();
  ReadShareRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadShareRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadShareRequest clone() => new ReadShareRequest()..mergeFromMessage(this);
  ReadShareRequest copyWith(void Function(ReadShareRequest) updates) => super.copyWith((message) => updates(message as ReadShareRequest));
  $pb.BuilderInfo get info_ => _i;
  static ReadShareRequest create() => new ReadShareRequest();
  ReadShareRequest createEmptyInstance() => create();
  static $pb.PbList<ReadShareRequest> createRepeated() => new $pb.PbList<ReadShareRequest>();
  static ReadShareRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReadShareRequest _defaultInstance;
  static void $checkItem(ReadShareRequest v) {
    if (v is! ReadShareRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class ReadShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadShareResponse', package: const $pb.PackageName('folio'))
    ..a<Share>(1, 'result', $pb.PbFieldType.OM, Share.getDefault, Share.create)
    ..hasRequiredFields = false
  ;

  ReadShareResponse() : super();
  ReadShareResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadShareResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadShareResponse clone() => new ReadShareResponse()..mergeFromMessage(this);
  ReadShareResponse copyWith(void Function(ReadShareResponse) updates) => super.copyWith((message) => updates(message as ReadShareResponse));
  $pb.BuilderInfo get info_ => _i;
  static ReadShareResponse create() => new ReadShareResponse();
  ReadShareResponse createEmptyInstance() => create();
  static $pb.PbList<ReadShareResponse> createRepeated() => new $pb.PbList<ReadShareResponse>();
  static ReadShareResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ReadShareResponse _defaultInstance;
  static void $checkItem(ReadShareResponse v) {
    if (v is! ReadShareResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Share get result => $_getN(0);
  set result(Share v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class UpdateShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateShareRequest', package: const $pb.PackageName('folio'))
    ..a<Share>(1, 'payload', $pb.PbFieldType.OM, Share.getDefault, Share.create)
    ..a<$0.FieldMask>(2, 'gerogeriGegege', $pb.PbFieldType.OM, $0.FieldMask.getDefault, $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateShareRequest() : super();
  UpdateShareRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateShareRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateShareRequest clone() => new UpdateShareRequest()..mergeFromMessage(this);
  UpdateShareRequest copyWith(void Function(UpdateShareRequest) updates) => super.copyWith((message) => updates(message as UpdateShareRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateShareRequest create() => new UpdateShareRequest();
  UpdateShareRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateShareRequest> createRepeated() => new $pb.PbList<UpdateShareRequest>();
  static UpdateShareRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateShareRequest _defaultInstance;
  static void $checkItem(UpdateShareRequest v) {
    if (v is! UpdateShareRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Share get payload => $_getN(0);
  set payload(Share v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);

  $0.FieldMask get gerogeriGegege => $_getN(1);
  set gerogeriGegege($0.FieldMask v) { setField(2, v); }
  bool hasGerogeriGegege() => $_has(1);
  void clearGerogeriGegege() => clearField(2);
}

class UpdateShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateShareResponse', package: const $pb.PackageName('folio'))
    ..a<Share>(1, 'result', $pb.PbFieldType.OM, Share.getDefault, Share.create)
    ..hasRequiredFields = false
  ;

  UpdateShareResponse() : super();
  UpdateShareResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateShareResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateShareResponse clone() => new UpdateShareResponse()..mergeFromMessage(this);
  UpdateShareResponse copyWith(void Function(UpdateShareResponse) updates) => super.copyWith((message) => updates(message as UpdateShareResponse));
  $pb.BuilderInfo get info_ => _i;
  static UpdateShareResponse create() => new UpdateShareResponse();
  UpdateShareResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateShareResponse> createRepeated() => new $pb.PbList<UpdateShareResponse>();
  static UpdateShareResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateShareResponse _defaultInstance;
  static void $checkItem(UpdateShareResponse v) {
    if (v is! UpdateShareResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Share get result => $_getN(0);
  set result(Share v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class DeleteShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteShareRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DeleteShareRequest() : super();
  DeleteShareRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteShareRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteShareRequest clone() => new DeleteShareRequest()..mergeFromMessage(this);
  DeleteShareRequest copyWith(void Function(DeleteShareRequest) updates) => super.copyWith((message) => updates(message as DeleteShareRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteShareRequest create() => new DeleteShareRequest();
  DeleteShareRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteShareRequest> createRepeated() => new $pb.PbList<DeleteShareRequest>();
  static DeleteShareRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteShareRequest _defaultInstance;
  static void $checkItem(DeleteShareRequest v) {
    if (v is! DeleteShareRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class DeleteSharesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteSharesRequest', package: const $pb.PackageName('folio'))
    ..p<int>(1, 'ids', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false
  ;

  DeleteSharesRequest() : super();
  DeleteSharesRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteSharesRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteSharesRequest clone() => new DeleteSharesRequest()..mergeFromMessage(this);
  DeleteSharesRequest copyWith(void Function(DeleteSharesRequest) updates) => super.copyWith((message) => updates(message as DeleteSharesRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteSharesRequest create() => new DeleteSharesRequest();
  DeleteSharesRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSharesRequest> createRepeated() => new $pb.PbList<DeleteSharesRequest>();
  static DeleteSharesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteSharesRequest _defaultInstance;
  static void $checkItem(DeleteSharesRequest v) {
    if (v is! DeleteSharesRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get ids => $_getList(0);
}

class DeleteShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteShareResponse', package: const $pb.PackageName('folio'))
    ..hasRequiredFields = false
  ;

  DeleteShareResponse() : super();
  DeleteShareResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteShareResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteShareResponse clone() => new DeleteShareResponse()..mergeFromMessage(this);
  DeleteShareResponse copyWith(void Function(DeleteShareResponse) updates) => super.copyWith((message) => updates(message as DeleteShareResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteShareResponse create() => new DeleteShareResponse();
  DeleteShareResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteShareResponse> createRepeated() => new $pb.PbList<DeleteShareResponse>();
  static DeleteShareResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteShareResponse _defaultInstance;
  static void $checkItem(DeleteShareResponse v) {
    if (v is! DeleteShareResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListShareResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListShareResponse', package: const $pb.PackageName('folio'))
    ..pp<Share>(1, 'results', $pb.PbFieldType.PM, Share.$checkItem, Share.create)
    ..a<$1.PageInfo>(2, 'pageInfo', $pb.PbFieldType.OM, $1.PageInfo.getDefault, $1.PageInfo.create)
    ..hasRequiredFields = false
  ;

  ListShareResponse() : super();
  ListShareResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListShareResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListShareResponse clone() => new ListShareResponse()..mergeFromMessage(this);
  ListShareResponse copyWith(void Function(ListShareResponse) updates) => super.copyWith((message) => updates(message as ListShareResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListShareResponse create() => new ListShareResponse();
  ListShareResponse createEmptyInstance() => create();
  static $pb.PbList<ListShareResponse> createRepeated() => new $pb.PbList<ListShareResponse>();
  static ListShareResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListShareResponse _defaultInstance;
  static void $checkItem(ListShareResponse v) {
    if (v is! ListShareResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Share> get results => $_getList(0);

  $1.PageInfo get pageInfo => $_getN(1);
  set pageInfo($1.PageInfo v) { setField(2, v); }
  bool hasPageInfo() => $_has(1);
  void clearPageInfo() => clearField(2);
}

class ListShareRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListShareRequest', package: const $pb.PackageName('folio'))
    ..a<$1.Filtering>(1, 'filter', $pb.PbFieldType.OM, $1.Filtering.getDefault, $1.Filtering.create)
    ..a<$1.Sorting>(2, 'orderBy', $pb.PbFieldType.OM, $1.Sorting.getDefault, $1.Sorting.create)
    ..a<$1.FieldSelection>(3, 'fields', $pb.PbFieldType.OM, $1.FieldSelection.getDefault, $1.FieldSelection.create)
    ..a<$1.Pagination>(4, 'paging', $pb.PbFieldType.OM, $1.Pagination.getDefault, $1.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListShareRequest() : super();
  ListShareRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListShareRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListShareRequest clone() => new ListShareRequest()..mergeFromMessage(this);
  ListShareRequest copyWith(void Function(ListShareRequest) updates) => super.copyWith((message) => updates(message as ListShareRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListShareRequest create() => new ListShareRequest();
  ListShareRequest createEmptyInstance() => create();
  static $pb.PbList<ListShareRequest> createRepeated() => new $pb.PbList<ListShareRequest>();
  static ListShareRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListShareRequest _defaultInstance;
  static void $checkItem(ListShareRequest v) {
    if (v is! ListShareRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  $1.Filtering get filter => $_getN(0);
  set filter($1.Filtering v) { setField(1, v); }
  bool hasFilter() => $_has(0);
  void clearFilter() => clearField(1);

  $1.Sorting get orderBy => $_getN(1);
  set orderBy($1.Sorting v) { setField(2, v); }
  bool hasOrderBy() => $_has(1);
  void clearOrderBy() => clearField(2);

  $1.FieldSelection get fields => $_getN(2);
  set fields($1.FieldSelection v) { setField(3, v); }
  bool hasFields() => $_has(2);
  void clearFields() => clearField(3);

  $1.Pagination get paging => $_getN(3);
  set paging($1.Pagination v) { setField(4, v); }
  bool hasPaging() => $_has(3);
  void clearPaging() => clearField(4);
}

class Tag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Tag', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..a<int>(2, 'kind', $pb.PbFieldType.OU3)
    ..aOS(3, 'label')
    ..aOS(4, 'desc')
    ..pp<Folio>(6, 'folios', $pb.PbFieldType.PM, Folio.$checkItem, Folio.create)
    ..a<Asset>(14, 'thumbnail', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  Tag() : super();
  Tag.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Tag.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Tag clone() => new Tag()..mergeFromMessage(this);
  Tag copyWith(void Function(Tag) updates) => super.copyWith((message) => updates(message as Tag));
  $pb.BuilderInfo get info_ => _i;
  static Tag create() => new Tag();
  Tag createEmptyInstance() => create();
  static $pb.PbList<Tag> createRepeated() => new $pb.PbList<Tag>();
  static Tag getDefault() => _defaultInstance ??= create()..freeze();
  static Tag _defaultInstance;
  static void $checkItem(Tag v) {
    if (v is! Tag) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  int get kind => $_get(1, 0);
  set kind(int v) { $_setUnsignedInt32(1, v); }
  bool hasKind() => $_has(1);
  void clearKind() => clearField(2);

  String get label => $_getS(2, '');
  set label(String v) { $_setString(2, v); }
  bool hasLabel() => $_has(2);
  void clearLabel() => clearField(3);

  String get desc => $_getS(3, '');
  set desc(String v) { $_setString(3, v); }
  bool hasDesc() => $_has(3);
  void clearDesc() => clearField(4);

  List<Folio> get folios => $_getList(4);

  Asset get thumbnail => $_getN(5);
  set thumbnail(Asset v) { setField(14, v); }
  bool hasThumbnail() => $_has(5);
  void clearThumbnail() => clearField(14);
}

class CreateTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateTagRequest', package: const $pb.PackageName('folio'))
    ..a<Tag>(1, 'payload', $pb.PbFieldType.OM, Tag.getDefault, Tag.create)
    ..hasRequiredFields = false
  ;

  CreateTagRequest() : super();
  CreateTagRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateTagRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateTagRequest clone() => new CreateTagRequest()..mergeFromMessage(this);
  CreateTagRequest copyWith(void Function(CreateTagRequest) updates) => super.copyWith((message) => updates(message as CreateTagRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateTagRequest create() => new CreateTagRequest();
  CreateTagRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTagRequest> createRepeated() => new $pb.PbList<CreateTagRequest>();
  static CreateTagRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateTagRequest _defaultInstance;
  static void $checkItem(CreateTagRequest v) {
    if (v is! CreateTagRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Tag get payload => $_getN(0);
  set payload(Tag v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);
}

class CreateTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateTagResponse', package: const $pb.PackageName('folio'))
    ..a<Tag>(1, 'result', $pb.PbFieldType.OM, Tag.getDefault, Tag.create)
    ..hasRequiredFields = false
  ;

  CreateTagResponse() : super();
  CreateTagResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateTagResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateTagResponse clone() => new CreateTagResponse()..mergeFromMessage(this);
  CreateTagResponse copyWith(void Function(CreateTagResponse) updates) => super.copyWith((message) => updates(message as CreateTagResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateTagResponse create() => new CreateTagResponse();
  CreateTagResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTagResponse> createRepeated() => new $pb.PbList<CreateTagResponse>();
  static CreateTagResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateTagResponse _defaultInstance;
  static void $checkItem(CreateTagResponse v) {
    if (v is! CreateTagResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Tag get result => $_getN(0);
  set result(Tag v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class ReadTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadTagRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReadTagRequest() : super();
  ReadTagRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadTagRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadTagRequest clone() => new ReadTagRequest()..mergeFromMessage(this);
  ReadTagRequest copyWith(void Function(ReadTagRequest) updates) => super.copyWith((message) => updates(message as ReadTagRequest));
  $pb.BuilderInfo get info_ => _i;
  static ReadTagRequest create() => new ReadTagRequest();
  ReadTagRequest createEmptyInstance() => create();
  static $pb.PbList<ReadTagRequest> createRepeated() => new $pb.PbList<ReadTagRequest>();
  static ReadTagRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReadTagRequest _defaultInstance;
  static void $checkItem(ReadTagRequest v) {
    if (v is! ReadTagRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class ReadTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadTagResponse', package: const $pb.PackageName('folio'))
    ..a<Tag>(1, 'result', $pb.PbFieldType.OM, Tag.getDefault, Tag.create)
    ..hasRequiredFields = false
  ;

  ReadTagResponse() : super();
  ReadTagResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadTagResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadTagResponse clone() => new ReadTagResponse()..mergeFromMessage(this);
  ReadTagResponse copyWith(void Function(ReadTagResponse) updates) => super.copyWith((message) => updates(message as ReadTagResponse));
  $pb.BuilderInfo get info_ => _i;
  static ReadTagResponse create() => new ReadTagResponse();
  ReadTagResponse createEmptyInstance() => create();
  static $pb.PbList<ReadTagResponse> createRepeated() => new $pb.PbList<ReadTagResponse>();
  static ReadTagResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ReadTagResponse _defaultInstance;
  static void $checkItem(ReadTagResponse v) {
    if (v is! ReadTagResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Tag get result => $_getN(0);
  set result(Tag v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class UpdateTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateTagRequest', package: const $pb.PackageName('folio'))
    ..a<Tag>(1, 'payload', $pb.PbFieldType.OM, Tag.getDefault, Tag.create)
    ..a<$0.FieldMask>(2, 'gerogeriGegege', $pb.PbFieldType.OM, $0.FieldMask.getDefault, $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateTagRequest() : super();
  UpdateTagRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateTagRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateTagRequest clone() => new UpdateTagRequest()..mergeFromMessage(this);
  UpdateTagRequest copyWith(void Function(UpdateTagRequest) updates) => super.copyWith((message) => updates(message as UpdateTagRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateTagRequest create() => new UpdateTagRequest();
  UpdateTagRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTagRequest> createRepeated() => new $pb.PbList<UpdateTagRequest>();
  static UpdateTagRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateTagRequest _defaultInstance;
  static void $checkItem(UpdateTagRequest v) {
    if (v is! UpdateTagRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Tag get payload => $_getN(0);
  set payload(Tag v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);

  $0.FieldMask get gerogeriGegege => $_getN(1);
  set gerogeriGegege($0.FieldMask v) { setField(2, v); }
  bool hasGerogeriGegege() => $_has(1);
  void clearGerogeriGegege() => clearField(2);
}

class UpdateTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateTagResponse', package: const $pb.PackageName('folio'))
    ..a<Tag>(1, 'result', $pb.PbFieldType.OM, Tag.getDefault, Tag.create)
    ..hasRequiredFields = false
  ;

  UpdateTagResponse() : super();
  UpdateTagResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateTagResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateTagResponse clone() => new UpdateTagResponse()..mergeFromMessage(this);
  UpdateTagResponse copyWith(void Function(UpdateTagResponse) updates) => super.copyWith((message) => updates(message as UpdateTagResponse));
  $pb.BuilderInfo get info_ => _i;
  static UpdateTagResponse create() => new UpdateTagResponse();
  UpdateTagResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTagResponse> createRepeated() => new $pb.PbList<UpdateTagResponse>();
  static UpdateTagResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateTagResponse _defaultInstance;
  static void $checkItem(UpdateTagResponse v) {
    if (v is! UpdateTagResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Tag get result => $_getN(0);
  set result(Tag v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class DeleteTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteTagRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DeleteTagRequest() : super();
  DeleteTagRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteTagRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteTagRequest clone() => new DeleteTagRequest()..mergeFromMessage(this);
  DeleteTagRequest copyWith(void Function(DeleteTagRequest) updates) => super.copyWith((message) => updates(message as DeleteTagRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteTagRequest create() => new DeleteTagRequest();
  DeleteTagRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTagRequest> createRepeated() => new $pb.PbList<DeleteTagRequest>();
  static DeleteTagRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteTagRequest _defaultInstance;
  static void $checkItem(DeleteTagRequest v) {
    if (v is! DeleteTagRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class DeleteTagsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteTagsRequest', package: const $pb.PackageName('folio'))
    ..p<int>(1, 'ids', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false
  ;

  DeleteTagsRequest() : super();
  DeleteTagsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteTagsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteTagsRequest clone() => new DeleteTagsRequest()..mergeFromMessage(this);
  DeleteTagsRequest copyWith(void Function(DeleteTagsRequest) updates) => super.copyWith((message) => updates(message as DeleteTagsRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteTagsRequest create() => new DeleteTagsRequest();
  DeleteTagsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTagsRequest> createRepeated() => new $pb.PbList<DeleteTagsRequest>();
  static DeleteTagsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteTagsRequest _defaultInstance;
  static void $checkItem(DeleteTagsRequest v) {
    if (v is! DeleteTagsRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get ids => $_getList(0);
}

class DeleteTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteTagResponse', package: const $pb.PackageName('folio'))
    ..hasRequiredFields = false
  ;

  DeleteTagResponse() : super();
  DeleteTagResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteTagResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteTagResponse clone() => new DeleteTagResponse()..mergeFromMessage(this);
  DeleteTagResponse copyWith(void Function(DeleteTagResponse) updates) => super.copyWith((message) => updates(message as DeleteTagResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteTagResponse create() => new DeleteTagResponse();
  DeleteTagResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteTagResponse> createRepeated() => new $pb.PbList<DeleteTagResponse>();
  static DeleteTagResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteTagResponse _defaultInstance;
  static void $checkItem(DeleteTagResponse v) {
    if (v is! DeleteTagResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListTagResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListTagResponse', package: const $pb.PackageName('folio'))
    ..pp<Tag>(1, 'results', $pb.PbFieldType.PM, Tag.$checkItem, Tag.create)
    ..a<$1.PageInfo>(2, 'pageInfo', $pb.PbFieldType.OM, $1.PageInfo.getDefault, $1.PageInfo.create)
    ..hasRequiredFields = false
  ;

  ListTagResponse() : super();
  ListTagResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListTagResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListTagResponse clone() => new ListTagResponse()..mergeFromMessage(this);
  ListTagResponse copyWith(void Function(ListTagResponse) updates) => super.copyWith((message) => updates(message as ListTagResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListTagResponse create() => new ListTagResponse();
  ListTagResponse createEmptyInstance() => create();
  static $pb.PbList<ListTagResponse> createRepeated() => new $pb.PbList<ListTagResponse>();
  static ListTagResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListTagResponse _defaultInstance;
  static void $checkItem(ListTagResponse v) {
    if (v is! ListTagResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Tag> get results => $_getList(0);

  $1.PageInfo get pageInfo => $_getN(1);
  set pageInfo($1.PageInfo v) { setField(2, v); }
  bool hasPageInfo() => $_has(1);
  void clearPageInfo() => clearField(2);
}

class ListTagRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListTagRequest', package: const $pb.PackageName('folio'))
    ..a<$1.Filtering>(1, 'filter', $pb.PbFieldType.OM, $1.Filtering.getDefault, $1.Filtering.create)
    ..a<$1.Sorting>(2, 'orderBy', $pb.PbFieldType.OM, $1.Sorting.getDefault, $1.Sorting.create)
    ..a<$1.FieldSelection>(3, 'fields', $pb.PbFieldType.OM, $1.FieldSelection.getDefault, $1.FieldSelection.create)
    ..a<$1.Pagination>(4, 'paging', $pb.PbFieldType.OM, $1.Pagination.getDefault, $1.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListTagRequest() : super();
  ListTagRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListTagRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListTagRequest clone() => new ListTagRequest()..mergeFromMessage(this);
  ListTagRequest copyWith(void Function(ListTagRequest) updates) => super.copyWith((message) => updates(message as ListTagRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListTagRequest create() => new ListTagRequest();
  ListTagRequest createEmptyInstance() => create();
  static $pb.PbList<ListTagRequest> createRepeated() => new $pb.PbList<ListTagRequest>();
  static ListTagRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListTagRequest _defaultInstance;
  static void $checkItem(ListTagRequest v) {
    if (v is! ListTagRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  $1.Filtering get filter => $_getN(0);
  set filter($1.Filtering v) { setField(1, v); }
  bool hasFilter() => $_has(0);
  void clearFilter() => clearField(1);

  $1.Sorting get orderBy => $_getN(1);
  set orderBy($1.Sorting v) { setField(2, v); }
  bool hasOrderBy() => $_has(1);
  void clearOrderBy() => clearField(2);

  $1.FieldSelection get fields => $_getN(2);
  set fields($1.FieldSelection v) { setField(3, v); }
  bool hasFields() => $_has(2);
  void clearFields() => clearField(3);

  $1.Pagination get paging => $_getN(3);
  set paging($1.Pagination v) { setField(4, v); }
  bool hasPaging() => $_has(3);
  void clearPaging() => clearField(4);
}

class Folio extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Folio', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'uUID')
    ..aOS(3, 'name')
    ..aOS(4, 'desc')
    ..pp<Asset>(6, 'assets', $pb.PbFieldType.PM, Asset.$checkItem, Asset.create)
    ..pp<Note>(7, 'notes', $pb.PbFieldType.PM, Note.$checkItem, Note.create)
    ..a<User>(8, 'owner', $pb.PbFieldType.OM, User.getDefault, User.create)
    ..pp<Tag>(10, 'tags', $pb.PbFieldType.PM, Tag.$checkItem, Tag.create)
    ..pp<Share>(11, 'shares', $pb.PbFieldType.PM, Share.$checkItem, Share.create)
    ..a<Asset>(14, 'thumbnail', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  Folio() : super();
  Folio.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Folio.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Folio clone() => new Folio()..mergeFromMessage(this);
  Folio copyWith(void Function(Folio) updates) => super.copyWith((message) => updates(message as Folio));
  $pb.BuilderInfo get info_ => _i;
  static Folio create() => new Folio();
  Folio createEmptyInstance() => create();
  static $pb.PbList<Folio> createRepeated() => new $pb.PbList<Folio>();
  static Folio getDefault() => _defaultInstance ??= create()..freeze();
  static Folio _defaultInstance;
  static void $checkItem(Folio v) {
    if (v is! Folio) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get uUID => $_getS(1, '');
  set uUID(String v) { $_setString(1, v); }
  bool hasUUID() => $_has(1);
  void clearUUID() => clearField(2);

  String get name => $_getS(2, '');
  set name(String v) { $_setString(2, v); }
  bool hasName() => $_has(2);
  void clearName() => clearField(3);

  String get desc => $_getS(3, '');
  set desc(String v) { $_setString(3, v); }
  bool hasDesc() => $_has(3);
  void clearDesc() => clearField(4);

  List<Asset> get assets => $_getList(4);

  List<Note> get notes => $_getList(5);

  User get owner => $_getN(6);
  set owner(User v) { setField(8, v); }
  bool hasOwner() => $_has(6);
  void clearOwner() => clearField(8);

  List<Tag> get tags => $_getList(7);

  List<Share> get shares => $_getList(8);

  Asset get thumbnail => $_getN(9);
  set thumbnail(Asset v) { setField(14, v); }
  bool hasThumbnail() => $_has(9);
  void clearThumbnail() => clearField(14);
}

class CreateFolioRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateFolioRequest', package: const $pb.PackageName('folio'))
    ..a<Folio>(1, 'payload', $pb.PbFieldType.OM, Folio.getDefault, Folio.create)
    ..hasRequiredFields = false
  ;

  CreateFolioRequest() : super();
  CreateFolioRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateFolioRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateFolioRequest clone() => new CreateFolioRequest()..mergeFromMessage(this);
  CreateFolioRequest copyWith(void Function(CreateFolioRequest) updates) => super.copyWith((message) => updates(message as CreateFolioRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateFolioRequest create() => new CreateFolioRequest();
  CreateFolioRequest createEmptyInstance() => create();
  static $pb.PbList<CreateFolioRequest> createRepeated() => new $pb.PbList<CreateFolioRequest>();
  static CreateFolioRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateFolioRequest _defaultInstance;
  static void $checkItem(CreateFolioRequest v) {
    if (v is! CreateFolioRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Folio get payload => $_getN(0);
  set payload(Folio v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);
}

class CreateFolioResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateFolioResponse', package: const $pb.PackageName('folio'))
    ..a<Folio>(1, 'result', $pb.PbFieldType.OM, Folio.getDefault, Folio.create)
    ..hasRequiredFields = false
  ;

  CreateFolioResponse() : super();
  CreateFolioResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateFolioResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateFolioResponse clone() => new CreateFolioResponse()..mergeFromMessage(this);
  CreateFolioResponse copyWith(void Function(CreateFolioResponse) updates) => super.copyWith((message) => updates(message as CreateFolioResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateFolioResponse create() => new CreateFolioResponse();
  CreateFolioResponse createEmptyInstance() => create();
  static $pb.PbList<CreateFolioResponse> createRepeated() => new $pb.PbList<CreateFolioResponse>();
  static CreateFolioResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateFolioResponse _defaultInstance;
  static void $checkItem(CreateFolioResponse v) {
    if (v is! CreateFolioResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Folio get result => $_getN(0);
  set result(Folio v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class ReadFolioRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadFolioRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReadFolioRequest() : super();
  ReadFolioRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadFolioRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadFolioRequest clone() => new ReadFolioRequest()..mergeFromMessage(this);
  ReadFolioRequest copyWith(void Function(ReadFolioRequest) updates) => super.copyWith((message) => updates(message as ReadFolioRequest));
  $pb.BuilderInfo get info_ => _i;
  static ReadFolioRequest create() => new ReadFolioRequest();
  ReadFolioRequest createEmptyInstance() => create();
  static $pb.PbList<ReadFolioRequest> createRepeated() => new $pb.PbList<ReadFolioRequest>();
  static ReadFolioRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReadFolioRequest _defaultInstance;
  static void $checkItem(ReadFolioRequest v) {
    if (v is! ReadFolioRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class ReadFolioResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadFolioResponse', package: const $pb.PackageName('folio'))
    ..a<Folio>(1, 'result', $pb.PbFieldType.OM, Folio.getDefault, Folio.create)
    ..hasRequiredFields = false
  ;

  ReadFolioResponse() : super();
  ReadFolioResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadFolioResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadFolioResponse clone() => new ReadFolioResponse()..mergeFromMessage(this);
  ReadFolioResponse copyWith(void Function(ReadFolioResponse) updates) => super.copyWith((message) => updates(message as ReadFolioResponse));
  $pb.BuilderInfo get info_ => _i;
  static ReadFolioResponse create() => new ReadFolioResponse();
  ReadFolioResponse createEmptyInstance() => create();
  static $pb.PbList<ReadFolioResponse> createRepeated() => new $pb.PbList<ReadFolioResponse>();
  static ReadFolioResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ReadFolioResponse _defaultInstance;
  static void $checkItem(ReadFolioResponse v) {
    if (v is! ReadFolioResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Folio get result => $_getN(0);
  set result(Folio v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class UpdateFolioRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateFolioRequest', package: const $pb.PackageName('folio'))
    ..a<Folio>(1, 'payload', $pb.PbFieldType.OM, Folio.getDefault, Folio.create)
    ..a<$0.FieldMask>(2, 'gerogeriGegege', $pb.PbFieldType.OM, $0.FieldMask.getDefault, $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateFolioRequest() : super();
  UpdateFolioRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateFolioRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateFolioRequest clone() => new UpdateFolioRequest()..mergeFromMessage(this);
  UpdateFolioRequest copyWith(void Function(UpdateFolioRequest) updates) => super.copyWith((message) => updates(message as UpdateFolioRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateFolioRequest create() => new UpdateFolioRequest();
  UpdateFolioRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateFolioRequest> createRepeated() => new $pb.PbList<UpdateFolioRequest>();
  static UpdateFolioRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateFolioRequest _defaultInstance;
  static void $checkItem(UpdateFolioRequest v) {
    if (v is! UpdateFolioRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Folio get payload => $_getN(0);
  set payload(Folio v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);

  $0.FieldMask get gerogeriGegege => $_getN(1);
  set gerogeriGegege($0.FieldMask v) { setField(2, v); }
  bool hasGerogeriGegege() => $_has(1);
  void clearGerogeriGegege() => clearField(2);
}

class UpdateFolioResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateFolioResponse', package: const $pb.PackageName('folio'))
    ..a<Folio>(1, 'result', $pb.PbFieldType.OM, Folio.getDefault, Folio.create)
    ..hasRequiredFields = false
  ;

  UpdateFolioResponse() : super();
  UpdateFolioResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateFolioResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateFolioResponse clone() => new UpdateFolioResponse()..mergeFromMessage(this);
  UpdateFolioResponse copyWith(void Function(UpdateFolioResponse) updates) => super.copyWith((message) => updates(message as UpdateFolioResponse));
  $pb.BuilderInfo get info_ => _i;
  static UpdateFolioResponse create() => new UpdateFolioResponse();
  UpdateFolioResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateFolioResponse> createRepeated() => new $pb.PbList<UpdateFolioResponse>();
  static UpdateFolioResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateFolioResponse _defaultInstance;
  static void $checkItem(UpdateFolioResponse v) {
    if (v is! UpdateFolioResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Folio get result => $_getN(0);
  set result(Folio v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class DeleteFolioRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteFolioRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DeleteFolioRequest() : super();
  DeleteFolioRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteFolioRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteFolioRequest clone() => new DeleteFolioRequest()..mergeFromMessage(this);
  DeleteFolioRequest copyWith(void Function(DeleteFolioRequest) updates) => super.copyWith((message) => updates(message as DeleteFolioRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteFolioRequest create() => new DeleteFolioRequest();
  DeleteFolioRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteFolioRequest> createRepeated() => new $pb.PbList<DeleteFolioRequest>();
  static DeleteFolioRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteFolioRequest _defaultInstance;
  static void $checkItem(DeleteFolioRequest v) {
    if (v is! DeleteFolioRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class DeleteFoliosRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteFoliosRequest', package: const $pb.PackageName('folio'))
    ..p<int>(1, 'ids', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false
  ;

  DeleteFoliosRequest() : super();
  DeleteFoliosRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteFoliosRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteFoliosRequest clone() => new DeleteFoliosRequest()..mergeFromMessage(this);
  DeleteFoliosRequest copyWith(void Function(DeleteFoliosRequest) updates) => super.copyWith((message) => updates(message as DeleteFoliosRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteFoliosRequest create() => new DeleteFoliosRequest();
  DeleteFoliosRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteFoliosRequest> createRepeated() => new $pb.PbList<DeleteFoliosRequest>();
  static DeleteFoliosRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteFoliosRequest _defaultInstance;
  static void $checkItem(DeleteFoliosRequest v) {
    if (v is! DeleteFoliosRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get ids => $_getList(0);
}

class DeleteFolioResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteFolioResponse', package: const $pb.PackageName('folio'))
    ..hasRequiredFields = false
  ;

  DeleteFolioResponse() : super();
  DeleteFolioResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteFolioResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteFolioResponse clone() => new DeleteFolioResponse()..mergeFromMessage(this);
  DeleteFolioResponse copyWith(void Function(DeleteFolioResponse) updates) => super.copyWith((message) => updates(message as DeleteFolioResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteFolioResponse create() => new DeleteFolioResponse();
  DeleteFolioResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteFolioResponse> createRepeated() => new $pb.PbList<DeleteFolioResponse>();
  static DeleteFolioResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteFolioResponse _defaultInstance;
  static void $checkItem(DeleteFolioResponse v) {
    if (v is! DeleteFolioResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListFolioResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListFolioResponse', package: const $pb.PackageName('folio'))
    ..pp<Folio>(1, 'results', $pb.PbFieldType.PM, Folio.$checkItem, Folio.create)
    ..a<$1.PageInfo>(2, 'pageInfo', $pb.PbFieldType.OM, $1.PageInfo.getDefault, $1.PageInfo.create)
    ..hasRequiredFields = false
  ;

  ListFolioResponse() : super();
  ListFolioResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListFolioResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListFolioResponse clone() => new ListFolioResponse()..mergeFromMessage(this);
  ListFolioResponse copyWith(void Function(ListFolioResponse) updates) => super.copyWith((message) => updates(message as ListFolioResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListFolioResponse create() => new ListFolioResponse();
  ListFolioResponse createEmptyInstance() => create();
  static $pb.PbList<ListFolioResponse> createRepeated() => new $pb.PbList<ListFolioResponse>();
  static ListFolioResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListFolioResponse _defaultInstance;
  static void $checkItem(ListFolioResponse v) {
    if (v is! ListFolioResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Folio> get results => $_getList(0);

  $1.PageInfo get pageInfo => $_getN(1);
  set pageInfo($1.PageInfo v) { setField(2, v); }
  bool hasPageInfo() => $_has(1);
  void clearPageInfo() => clearField(2);
}

class ListFolioRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListFolioRequest', package: const $pb.PackageName('folio'))
    ..a<$1.Filtering>(1, 'filter', $pb.PbFieldType.OM, $1.Filtering.getDefault, $1.Filtering.create)
    ..a<$1.Sorting>(2, 'orderBy', $pb.PbFieldType.OM, $1.Sorting.getDefault, $1.Sorting.create)
    ..a<$1.FieldSelection>(3, 'fields', $pb.PbFieldType.OM, $1.FieldSelection.getDefault, $1.FieldSelection.create)
    ..a<$1.Pagination>(4, 'paging', $pb.PbFieldType.OM, $1.Pagination.getDefault, $1.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListFolioRequest() : super();
  ListFolioRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListFolioRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListFolioRequest clone() => new ListFolioRequest()..mergeFromMessage(this);
  ListFolioRequest copyWith(void Function(ListFolioRequest) updates) => super.copyWith((message) => updates(message as ListFolioRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListFolioRequest create() => new ListFolioRequest();
  ListFolioRequest createEmptyInstance() => create();
  static $pb.PbList<ListFolioRequest> createRepeated() => new $pb.PbList<ListFolioRequest>();
  static ListFolioRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListFolioRequest _defaultInstance;
  static void $checkItem(ListFolioRequest v) {
    if (v is! ListFolioRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  $1.Filtering get filter => $_getN(0);
  set filter($1.Filtering v) { setField(1, v); }
  bool hasFilter() => $_has(0);
  void clearFilter() => clearField(1);

  $1.Sorting get orderBy => $_getN(1);
  set orderBy($1.Sorting v) { setField(2, v); }
  bool hasOrderBy() => $_has(1);
  void clearOrderBy() => clearField(2);

  $1.FieldSelection get fields => $_getN(2);
  set fields($1.FieldSelection v) { setField(3, v); }
  bool hasFields() => $_has(2);
  void clearFields() => clearField(3);

  $1.Pagination get paging => $_getN(3);
  set paging($1.Pagination v) { setField(4, v); }
  bool hasPaging() => $_has(3);
  void clearPaging() => clearField(4);
}

class Asset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Asset', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(2, 'name')
    ..a<Folio>(3, 'folio', $pb.PbFieldType.OM, Folio.getDefault, Folio.create)
    ..aOS(4, 'uUID')
    ..aOS(5, 'path')
    ..a<Asset>(6, 'asset', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..a<Asset>(14, 'thumbnail', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..a<List<int>>(20, 'blob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Asset() : super();
  Asset.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Asset.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Asset clone() => new Asset()..mergeFromMessage(this);
  Asset copyWith(void Function(Asset) updates) => super.copyWith((message) => updates(message as Asset));
  $pb.BuilderInfo get info_ => _i;
  static Asset create() => new Asset();
  Asset createEmptyInstance() => create();
  static $pb.PbList<Asset> createRepeated() => new $pb.PbList<Asset>();
  static Asset getDefault() => _defaultInstance ??= create()..freeze();
  static Asset _defaultInstance;
  static void $checkItem(Asset v) {
    if (v is! Asset) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);

  Folio get folio => $_getN(2);
  set folio(Folio v) { setField(3, v); }
  bool hasFolio() => $_has(2);
  void clearFolio() => clearField(3);

  String get uUID => $_getS(3, '');
  set uUID(String v) { $_setString(3, v); }
  bool hasUUID() => $_has(3);
  void clearUUID() => clearField(4);

  String get path => $_getS(4, '');
  set path(String v) { $_setString(4, v); }
  bool hasPath() => $_has(4);
  void clearPath() => clearField(5);

  Asset get asset => $_getN(5);
  set asset(Asset v) { setField(6, v); }
  bool hasAsset() => $_has(5);
  void clearAsset() => clearField(6);

  Asset get thumbnail => $_getN(6);
  set thumbnail(Asset v) { setField(14, v); }
  bool hasThumbnail() => $_has(6);
  void clearThumbnail() => clearField(14);

  List<int> get blob => $_getN(7);
  set blob(List<int> v) { $_setBytes(7, v); }
  bool hasBlob() => $_has(7);
  void clearBlob() => clearField(20);
}

class CreateAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateAssetRequest', package: const $pb.PackageName('folio'))
    ..a<Asset>(1, 'payload', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  CreateAssetRequest() : super();
  CreateAssetRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateAssetRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateAssetRequest clone() => new CreateAssetRequest()..mergeFromMessage(this);
  CreateAssetRequest copyWith(void Function(CreateAssetRequest) updates) => super.copyWith((message) => updates(message as CreateAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateAssetRequest create() => new CreateAssetRequest();
  CreateAssetRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAssetRequest> createRepeated() => new $pb.PbList<CreateAssetRequest>();
  static CreateAssetRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateAssetRequest _defaultInstance;
  static void $checkItem(CreateAssetRequest v) {
    if (v is! CreateAssetRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Asset get payload => $_getN(0);
  set payload(Asset v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);
}

class CreateAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateAssetResponse', package: const $pb.PackageName('folio'))
    ..a<Asset>(1, 'result', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  CreateAssetResponse() : super();
  CreateAssetResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateAssetResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateAssetResponse clone() => new CreateAssetResponse()..mergeFromMessage(this);
  CreateAssetResponse copyWith(void Function(CreateAssetResponse) updates) => super.copyWith((message) => updates(message as CreateAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateAssetResponse create() => new CreateAssetResponse();
  CreateAssetResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAssetResponse> createRepeated() => new $pb.PbList<CreateAssetResponse>();
  static CreateAssetResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateAssetResponse _defaultInstance;
  static void $checkItem(CreateAssetResponse v) {
    if (v is! CreateAssetResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Asset get result => $_getN(0);
  set result(Asset v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class ReadAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadAssetRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReadAssetRequest() : super();
  ReadAssetRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadAssetRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadAssetRequest clone() => new ReadAssetRequest()..mergeFromMessage(this);
  ReadAssetRequest copyWith(void Function(ReadAssetRequest) updates) => super.copyWith((message) => updates(message as ReadAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  static ReadAssetRequest create() => new ReadAssetRequest();
  ReadAssetRequest createEmptyInstance() => create();
  static $pb.PbList<ReadAssetRequest> createRepeated() => new $pb.PbList<ReadAssetRequest>();
  static ReadAssetRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReadAssetRequest _defaultInstance;
  static void $checkItem(ReadAssetRequest v) {
    if (v is! ReadAssetRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class ReadAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadAssetResponse', package: const $pb.PackageName('folio'))
    ..a<Asset>(1, 'result', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  ReadAssetResponse() : super();
  ReadAssetResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadAssetResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadAssetResponse clone() => new ReadAssetResponse()..mergeFromMessage(this);
  ReadAssetResponse copyWith(void Function(ReadAssetResponse) updates) => super.copyWith((message) => updates(message as ReadAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  static ReadAssetResponse create() => new ReadAssetResponse();
  ReadAssetResponse createEmptyInstance() => create();
  static $pb.PbList<ReadAssetResponse> createRepeated() => new $pb.PbList<ReadAssetResponse>();
  static ReadAssetResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ReadAssetResponse _defaultInstance;
  static void $checkItem(ReadAssetResponse v) {
    if (v is! ReadAssetResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Asset get result => $_getN(0);
  set result(Asset v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class UpdateAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateAssetRequest', package: const $pb.PackageName('folio'))
    ..a<Asset>(1, 'payload', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..a<$0.FieldMask>(2, 'gerogeriGegege', $pb.PbFieldType.OM, $0.FieldMask.getDefault, $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateAssetRequest() : super();
  UpdateAssetRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateAssetRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateAssetRequest clone() => new UpdateAssetRequest()..mergeFromMessage(this);
  UpdateAssetRequest copyWith(void Function(UpdateAssetRequest) updates) => super.copyWith((message) => updates(message as UpdateAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateAssetRequest create() => new UpdateAssetRequest();
  UpdateAssetRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAssetRequest> createRepeated() => new $pb.PbList<UpdateAssetRequest>();
  static UpdateAssetRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateAssetRequest _defaultInstance;
  static void $checkItem(UpdateAssetRequest v) {
    if (v is! UpdateAssetRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Asset get payload => $_getN(0);
  set payload(Asset v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);

  $0.FieldMask get gerogeriGegege => $_getN(1);
  set gerogeriGegege($0.FieldMask v) { setField(2, v); }
  bool hasGerogeriGegege() => $_has(1);
  void clearGerogeriGegege() => clearField(2);
}

class UpdateAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateAssetResponse', package: const $pb.PackageName('folio'))
    ..a<Asset>(1, 'result', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  UpdateAssetResponse() : super();
  UpdateAssetResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateAssetResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateAssetResponse clone() => new UpdateAssetResponse()..mergeFromMessage(this);
  UpdateAssetResponse copyWith(void Function(UpdateAssetResponse) updates) => super.copyWith((message) => updates(message as UpdateAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  static UpdateAssetResponse create() => new UpdateAssetResponse();
  UpdateAssetResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateAssetResponse> createRepeated() => new $pb.PbList<UpdateAssetResponse>();
  static UpdateAssetResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateAssetResponse _defaultInstance;
  static void $checkItem(UpdateAssetResponse v) {
    if (v is! UpdateAssetResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Asset get result => $_getN(0);
  set result(Asset v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class DeleteAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteAssetRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DeleteAssetRequest() : super();
  DeleteAssetRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteAssetRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteAssetRequest clone() => new DeleteAssetRequest()..mergeFromMessage(this);
  DeleteAssetRequest copyWith(void Function(DeleteAssetRequest) updates) => super.copyWith((message) => updates(message as DeleteAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteAssetRequest create() => new DeleteAssetRequest();
  DeleteAssetRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAssetRequest> createRepeated() => new $pb.PbList<DeleteAssetRequest>();
  static DeleteAssetRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteAssetRequest _defaultInstance;
  static void $checkItem(DeleteAssetRequest v) {
    if (v is! DeleteAssetRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class DeleteAssetsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteAssetsRequest', package: const $pb.PackageName('folio'))
    ..p<int>(1, 'ids', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false
  ;

  DeleteAssetsRequest() : super();
  DeleteAssetsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteAssetsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteAssetsRequest clone() => new DeleteAssetsRequest()..mergeFromMessage(this);
  DeleteAssetsRequest copyWith(void Function(DeleteAssetsRequest) updates) => super.copyWith((message) => updates(message as DeleteAssetsRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteAssetsRequest create() => new DeleteAssetsRequest();
  DeleteAssetsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAssetsRequest> createRepeated() => new $pb.PbList<DeleteAssetsRequest>();
  static DeleteAssetsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteAssetsRequest _defaultInstance;
  static void $checkItem(DeleteAssetsRequest v) {
    if (v is! DeleteAssetsRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get ids => $_getList(0);
}

class DeleteAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteAssetResponse', package: const $pb.PackageName('folio'))
    ..hasRequiredFields = false
  ;

  DeleteAssetResponse() : super();
  DeleteAssetResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteAssetResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteAssetResponse clone() => new DeleteAssetResponse()..mergeFromMessage(this);
  DeleteAssetResponse copyWith(void Function(DeleteAssetResponse) updates) => super.copyWith((message) => updates(message as DeleteAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteAssetResponse create() => new DeleteAssetResponse();
  DeleteAssetResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAssetResponse> createRepeated() => new $pb.PbList<DeleteAssetResponse>();
  static DeleteAssetResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteAssetResponse _defaultInstance;
  static void $checkItem(DeleteAssetResponse v) {
    if (v is! DeleteAssetResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListAssetResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListAssetResponse', package: const $pb.PackageName('folio'))
    ..pp<Asset>(1, 'results', $pb.PbFieldType.PM, Asset.$checkItem, Asset.create)
    ..a<$1.PageInfo>(2, 'pageInfo', $pb.PbFieldType.OM, $1.PageInfo.getDefault, $1.PageInfo.create)
    ..hasRequiredFields = false
  ;

  ListAssetResponse() : super();
  ListAssetResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListAssetResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListAssetResponse clone() => new ListAssetResponse()..mergeFromMessage(this);
  ListAssetResponse copyWith(void Function(ListAssetResponse) updates) => super.copyWith((message) => updates(message as ListAssetResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListAssetResponse create() => new ListAssetResponse();
  ListAssetResponse createEmptyInstance() => create();
  static $pb.PbList<ListAssetResponse> createRepeated() => new $pb.PbList<ListAssetResponse>();
  static ListAssetResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListAssetResponse _defaultInstance;
  static void $checkItem(ListAssetResponse v) {
    if (v is! ListAssetResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Asset> get results => $_getList(0);

  $1.PageInfo get pageInfo => $_getN(1);
  set pageInfo($1.PageInfo v) { setField(2, v); }
  bool hasPageInfo() => $_has(1);
  void clearPageInfo() => clearField(2);
}

class ListAssetRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListAssetRequest', package: const $pb.PackageName('folio'))
    ..a<$1.Filtering>(1, 'filter', $pb.PbFieldType.OM, $1.Filtering.getDefault, $1.Filtering.create)
    ..a<$1.Sorting>(2, 'orderBy', $pb.PbFieldType.OM, $1.Sorting.getDefault, $1.Sorting.create)
    ..a<$1.FieldSelection>(3, 'fields', $pb.PbFieldType.OM, $1.FieldSelection.getDefault, $1.FieldSelection.create)
    ..a<$1.Pagination>(4, 'paging', $pb.PbFieldType.OM, $1.Pagination.getDefault, $1.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListAssetRequest() : super();
  ListAssetRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListAssetRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListAssetRequest clone() => new ListAssetRequest()..mergeFromMessage(this);
  ListAssetRequest copyWith(void Function(ListAssetRequest) updates) => super.copyWith((message) => updates(message as ListAssetRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListAssetRequest create() => new ListAssetRequest();
  ListAssetRequest createEmptyInstance() => create();
  static $pb.PbList<ListAssetRequest> createRepeated() => new $pb.PbList<ListAssetRequest>();
  static ListAssetRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListAssetRequest _defaultInstance;
  static void $checkItem(ListAssetRequest v) {
    if (v is! ListAssetRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  $1.Filtering get filter => $_getN(0);
  set filter($1.Filtering v) { setField(1, v); }
  bool hasFilter() => $_has(0);
  void clearFilter() => clearField(1);

  $1.Sorting get orderBy => $_getN(1);
  set orderBy($1.Sorting v) { setField(2, v); }
  bool hasOrderBy() => $_has(1);
  void clearOrderBy() => clearField(2);

  $1.FieldSelection get fields => $_getN(2);
  set fields($1.FieldSelection v) { setField(3, v); }
  bool hasFields() => $_has(2);
  void clearFields() => clearField(3);

  $1.Pagination get paging => $_getN(3);
  set paging($1.Pagination v) { setField(4, v); }
  bool hasPaging() => $_has(3);
  void clearPaging() => clearField(4);
}

class Note extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Note', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..aOS(3, 'name')
    ..aOS(4, 'note')
    ..a<Folio>(6, 'folio', $pb.PbFieldType.OM, Folio.getDefault, Folio.create)
    ..a<Asset>(14, 'thumbnail', $pb.PbFieldType.OM, Asset.getDefault, Asset.create)
    ..hasRequiredFields = false
  ;

  Note() : super();
  Note.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Note.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Note clone() => new Note()..mergeFromMessage(this);
  Note copyWith(void Function(Note) updates) => super.copyWith((message) => updates(message as Note));
  $pb.BuilderInfo get info_ => _i;
  static Note create() => new Note();
  Note createEmptyInstance() => create();
  static $pb.PbList<Note> createRepeated() => new $pb.PbList<Note>();
  static Note getDefault() => _defaultInstance ??= create()..freeze();
  static Note _defaultInstance;
  static void $checkItem(Note v) {
    if (v is! Note) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(3);

  String get note => $_getS(2, '');
  set note(String v) { $_setString(2, v); }
  bool hasNote() => $_has(2);
  void clearNote() => clearField(4);

  Folio get folio => $_getN(3);
  set folio(Folio v) { setField(6, v); }
  bool hasFolio() => $_has(3);
  void clearFolio() => clearField(6);

  Asset get thumbnail => $_getN(4);
  set thumbnail(Asset v) { setField(14, v); }
  bool hasThumbnail() => $_has(4);
  void clearThumbnail() => clearField(14);
}

class CreateNoteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateNoteRequest', package: const $pb.PackageName('folio'))
    ..a<Note>(1, 'payload', $pb.PbFieldType.OM, Note.getDefault, Note.create)
    ..hasRequiredFields = false
  ;

  CreateNoteRequest() : super();
  CreateNoteRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateNoteRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateNoteRequest clone() => new CreateNoteRequest()..mergeFromMessage(this);
  CreateNoteRequest copyWith(void Function(CreateNoteRequest) updates) => super.copyWith((message) => updates(message as CreateNoteRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateNoteRequest create() => new CreateNoteRequest();
  CreateNoteRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNoteRequest> createRepeated() => new $pb.PbList<CreateNoteRequest>();
  static CreateNoteRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateNoteRequest _defaultInstance;
  static void $checkItem(CreateNoteRequest v) {
    if (v is! CreateNoteRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Note get payload => $_getN(0);
  set payload(Note v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);
}

class CreateNoteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateNoteResponse', package: const $pb.PackageName('folio'))
    ..a<Note>(1, 'result', $pb.PbFieldType.OM, Note.getDefault, Note.create)
    ..hasRequiredFields = false
  ;

  CreateNoteResponse() : super();
  CreateNoteResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateNoteResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateNoteResponse clone() => new CreateNoteResponse()..mergeFromMessage(this);
  CreateNoteResponse copyWith(void Function(CreateNoteResponse) updates) => super.copyWith((message) => updates(message as CreateNoteResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateNoteResponse create() => new CreateNoteResponse();
  CreateNoteResponse createEmptyInstance() => create();
  static $pb.PbList<CreateNoteResponse> createRepeated() => new $pb.PbList<CreateNoteResponse>();
  static CreateNoteResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateNoteResponse _defaultInstance;
  static void $checkItem(CreateNoteResponse v) {
    if (v is! CreateNoteResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Note get result => $_getN(0);
  set result(Note v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class ReadNoteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadNoteRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ReadNoteRequest() : super();
  ReadNoteRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadNoteRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadNoteRequest clone() => new ReadNoteRequest()..mergeFromMessage(this);
  ReadNoteRequest copyWith(void Function(ReadNoteRequest) updates) => super.copyWith((message) => updates(message as ReadNoteRequest));
  $pb.BuilderInfo get info_ => _i;
  static ReadNoteRequest create() => new ReadNoteRequest();
  ReadNoteRequest createEmptyInstance() => create();
  static $pb.PbList<ReadNoteRequest> createRepeated() => new $pb.PbList<ReadNoteRequest>();
  static ReadNoteRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ReadNoteRequest _defaultInstance;
  static void $checkItem(ReadNoteRequest v) {
    if (v is! ReadNoteRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class ReadNoteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ReadNoteResponse', package: const $pb.PackageName('folio'))
    ..a<Note>(1, 'result', $pb.PbFieldType.OM, Note.getDefault, Note.create)
    ..hasRequiredFields = false
  ;

  ReadNoteResponse() : super();
  ReadNoteResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReadNoteResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReadNoteResponse clone() => new ReadNoteResponse()..mergeFromMessage(this);
  ReadNoteResponse copyWith(void Function(ReadNoteResponse) updates) => super.copyWith((message) => updates(message as ReadNoteResponse));
  $pb.BuilderInfo get info_ => _i;
  static ReadNoteResponse create() => new ReadNoteResponse();
  ReadNoteResponse createEmptyInstance() => create();
  static $pb.PbList<ReadNoteResponse> createRepeated() => new $pb.PbList<ReadNoteResponse>();
  static ReadNoteResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ReadNoteResponse _defaultInstance;
  static void $checkItem(ReadNoteResponse v) {
    if (v is! ReadNoteResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Note get result => $_getN(0);
  set result(Note v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class UpdateNoteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateNoteRequest', package: const $pb.PackageName('folio'))
    ..a<Note>(1, 'payload', $pb.PbFieldType.OM, Note.getDefault, Note.create)
    ..a<$0.FieldMask>(2, 'gerogeriGegege', $pb.PbFieldType.OM, $0.FieldMask.getDefault, $0.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateNoteRequest() : super();
  UpdateNoteRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateNoteRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateNoteRequest clone() => new UpdateNoteRequest()..mergeFromMessage(this);
  UpdateNoteRequest copyWith(void Function(UpdateNoteRequest) updates) => super.copyWith((message) => updates(message as UpdateNoteRequest));
  $pb.BuilderInfo get info_ => _i;
  static UpdateNoteRequest create() => new UpdateNoteRequest();
  UpdateNoteRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateNoteRequest> createRepeated() => new $pb.PbList<UpdateNoteRequest>();
  static UpdateNoteRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateNoteRequest _defaultInstance;
  static void $checkItem(UpdateNoteRequest v) {
    if (v is! UpdateNoteRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Note get payload => $_getN(0);
  set payload(Note v) { setField(1, v); }
  bool hasPayload() => $_has(0);
  void clearPayload() => clearField(1);

  $0.FieldMask get gerogeriGegege => $_getN(1);
  set gerogeriGegege($0.FieldMask v) { setField(2, v); }
  bool hasGerogeriGegege() => $_has(1);
  void clearGerogeriGegege() => clearField(2);
}

class UpdateNoteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UpdateNoteResponse', package: const $pb.PackageName('folio'))
    ..a<Note>(1, 'result', $pb.PbFieldType.OM, Note.getDefault, Note.create)
    ..hasRequiredFields = false
  ;

  UpdateNoteResponse() : super();
  UpdateNoteResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UpdateNoteResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UpdateNoteResponse clone() => new UpdateNoteResponse()..mergeFromMessage(this);
  UpdateNoteResponse copyWith(void Function(UpdateNoteResponse) updates) => super.copyWith((message) => updates(message as UpdateNoteResponse));
  $pb.BuilderInfo get info_ => _i;
  static UpdateNoteResponse create() => new UpdateNoteResponse();
  UpdateNoteResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateNoteResponse> createRepeated() => new $pb.PbList<UpdateNoteResponse>();
  static UpdateNoteResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateNoteResponse _defaultInstance;
  static void $checkItem(UpdateNoteResponse v) {
    if (v is! UpdateNoteResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Note get result => $_getN(0);
  set result(Note v) { setField(1, v); }
  bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

class DeleteNoteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteNoteRequest', package: const $pb.PackageName('folio'))
    ..a<int>(1, 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  DeleteNoteRequest() : super();
  DeleteNoteRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteNoteRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteNoteRequest clone() => new DeleteNoteRequest()..mergeFromMessage(this);
  DeleteNoteRequest copyWith(void Function(DeleteNoteRequest) updates) => super.copyWith((message) => updates(message as DeleteNoteRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteNoteRequest create() => new DeleteNoteRequest();
  DeleteNoteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNoteRequest> createRepeated() => new $pb.PbList<DeleteNoteRequest>();
  static DeleteNoteRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteNoteRequest _defaultInstance;
  static void $checkItem(DeleteNoteRequest v) {
    if (v is! DeleteNoteRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  int get id => $_get(0, 0);
  set id(int v) { $_setUnsignedInt32(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class DeleteNotesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteNotesRequest', package: const $pb.PackageName('folio'))
    ..p<int>(1, 'ids', $pb.PbFieldType.PU3)
    ..hasRequiredFields = false
  ;

  DeleteNotesRequest() : super();
  DeleteNotesRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteNotesRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteNotesRequest clone() => new DeleteNotesRequest()..mergeFromMessage(this);
  DeleteNotesRequest copyWith(void Function(DeleteNotesRequest) updates) => super.copyWith((message) => updates(message as DeleteNotesRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteNotesRequest create() => new DeleteNotesRequest();
  DeleteNotesRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNotesRequest> createRepeated() => new $pb.PbList<DeleteNotesRequest>();
  static DeleteNotesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteNotesRequest _defaultInstance;
  static void $checkItem(DeleteNotesRequest v) {
    if (v is! DeleteNotesRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<int> get ids => $_getList(0);
}

class DeleteNoteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteNoteResponse', package: const $pb.PackageName('folio'))
    ..hasRequiredFields = false
  ;

  DeleteNoteResponse() : super();
  DeleteNoteResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteNoteResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteNoteResponse clone() => new DeleteNoteResponse()..mergeFromMessage(this);
  DeleteNoteResponse copyWith(void Function(DeleteNoteResponse) updates) => super.copyWith((message) => updates(message as DeleteNoteResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteNoteResponse create() => new DeleteNoteResponse();
  DeleteNoteResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteNoteResponse> createRepeated() => new $pb.PbList<DeleteNoteResponse>();
  static DeleteNoteResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteNoteResponse _defaultInstance;
  static void $checkItem(DeleteNoteResponse v) {
    if (v is! DeleteNoteResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }
}

class ListNoteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListNoteResponse', package: const $pb.PackageName('folio'))
    ..pp<Note>(1, 'results', $pb.PbFieldType.PM, Note.$checkItem, Note.create)
    ..a<$1.PageInfo>(2, 'pageInfo', $pb.PbFieldType.OM, $1.PageInfo.getDefault, $1.PageInfo.create)
    ..hasRequiredFields = false
  ;

  ListNoteResponse() : super();
  ListNoteResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListNoteResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListNoteResponse clone() => new ListNoteResponse()..mergeFromMessage(this);
  ListNoteResponse copyWith(void Function(ListNoteResponse) updates) => super.copyWith((message) => updates(message as ListNoteResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListNoteResponse create() => new ListNoteResponse();
  ListNoteResponse createEmptyInstance() => create();
  static $pb.PbList<ListNoteResponse> createRepeated() => new $pb.PbList<ListNoteResponse>();
  static ListNoteResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListNoteResponse _defaultInstance;
  static void $checkItem(ListNoteResponse v) {
    if (v is! ListNoteResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Note> get results => $_getList(0);

  $1.PageInfo get pageInfo => $_getN(1);
  set pageInfo($1.PageInfo v) { setField(2, v); }
  bool hasPageInfo() => $_has(1);
  void clearPageInfo() => clearField(2);
}

class ListNoteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListNoteRequest', package: const $pb.PackageName('folio'))
    ..a<$1.Filtering>(1, 'filter', $pb.PbFieldType.OM, $1.Filtering.getDefault, $1.Filtering.create)
    ..a<$1.Sorting>(2, 'orderBy', $pb.PbFieldType.OM, $1.Sorting.getDefault, $1.Sorting.create)
    ..a<$1.FieldSelection>(3, 'fields', $pb.PbFieldType.OM, $1.FieldSelection.getDefault, $1.FieldSelection.create)
    ..a<$1.Pagination>(4, 'paging', $pb.PbFieldType.OM, $1.Pagination.getDefault, $1.Pagination.create)
    ..hasRequiredFields = false
  ;

  ListNoteRequest() : super();
  ListNoteRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListNoteRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListNoteRequest clone() => new ListNoteRequest()..mergeFromMessage(this);
  ListNoteRequest copyWith(void Function(ListNoteRequest) updates) => super.copyWith((message) => updates(message as ListNoteRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListNoteRequest create() => new ListNoteRequest();
  ListNoteRequest createEmptyInstance() => create();
  static $pb.PbList<ListNoteRequest> createRepeated() => new $pb.PbList<ListNoteRequest>();
  static ListNoteRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListNoteRequest _defaultInstance;
  static void $checkItem(ListNoteRequest v) {
    if (v is! ListNoteRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  $1.Filtering get filter => $_getN(0);
  set filter($1.Filtering v) { setField(1, v); }
  bool hasFilter() => $_has(0);
  void clearFilter() => clearField(1);

  $1.Sorting get orderBy => $_getN(1);
  set orderBy($1.Sorting v) { setField(2, v); }
  bool hasOrderBy() => $_has(1);
  void clearOrderBy() => clearField(2);

  $1.FieldSelection get fields => $_getN(2);
  set fields($1.FieldSelection v) { setField(3, v); }
  bool hasFields() => $_has(2);
  void clearFields() => clearField(3);

  $1.Pagination get paging => $_getN(3);
  set paging($1.Pagination v) { setField(4, v); }
  bool hasPaging() => $_has(3);
  void clearPaging() => clearField(4);
}

