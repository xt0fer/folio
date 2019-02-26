///
//  Generated code. Do not modify.
//  source: infoblox/api/collection_operators.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'collection_operators.pbenum.dart';

export 'collection_operators.pbenum.dart';

class SortCriteria extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('SortCriteria', package: const $pb.PackageName('infoblox.api'))
    ..aOS(1, 'tag')
    ..e<SortCriteria_Order>(2, 'order', $pb.PbFieldType.OE, SortCriteria_Order.ASC, SortCriteria_Order.valueOf, SortCriteria_Order.values)
    ..hasRequiredFields = false
  ;

  SortCriteria() : super();
  SortCriteria.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  SortCriteria.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  SortCriteria clone() => new SortCriteria()..mergeFromMessage(this);
  SortCriteria copyWith(void Function(SortCriteria) updates) => super.copyWith((message) => updates(message as SortCriteria));
  $pb.BuilderInfo get info_ => _i;
  static SortCriteria create() => new SortCriteria();
  SortCriteria createEmptyInstance() => create();
  static $pb.PbList<SortCriteria> createRepeated() => new $pb.PbList<SortCriteria>();
  static SortCriteria getDefault() => _defaultInstance ??= create()..freeze();
  static SortCriteria _defaultInstance;
  static void $checkItem(SortCriteria v) {
    if (v is! SortCriteria) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get tag => $_getS(0, '');
  set tag(String v) { $_setString(0, v); }
  bool hasTag() => $_has(0);
  void clearTag() => clearField(1);

  SortCriteria_Order get order => $_getN(1);
  set order(SortCriteria_Order v) { setField(2, v); }
  bool hasOrder() => $_has(1);
  void clearOrder() => clearField(2);
}

class Sorting extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Sorting', package: const $pb.PackageName('infoblox.api'))
    ..pp<SortCriteria>(1, 'criterias', $pb.PbFieldType.PM, SortCriteria.$checkItem, SortCriteria.create)
    ..hasRequiredFields = false
  ;

  Sorting() : super();
  Sorting.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Sorting.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Sorting clone() => new Sorting()..mergeFromMessage(this);
  Sorting copyWith(void Function(Sorting) updates) => super.copyWith((message) => updates(message as Sorting));
  $pb.BuilderInfo get info_ => _i;
  static Sorting create() => new Sorting();
  Sorting createEmptyInstance() => create();
  static $pb.PbList<Sorting> createRepeated() => new $pb.PbList<Sorting>();
  static Sorting getDefault() => _defaultInstance ??= create()..freeze();
  static Sorting _defaultInstance;
  static void $checkItem(Sorting v) {
    if (v is! Sorting) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<SortCriteria> get criterias => $_getList(0);
}

class FieldSelection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('FieldSelection', package: const $pb.PackageName('infoblox.api'))
    ..m<String, Field>(1, 'fields', 'FieldSelection.FieldsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, Field.create, null, null , const $pb.PackageName('infoblox.api'))
    ..hasRequiredFields = false
  ;

  FieldSelection() : super();
  FieldSelection.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  FieldSelection.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  FieldSelection clone() => new FieldSelection()..mergeFromMessage(this);
  FieldSelection copyWith(void Function(FieldSelection) updates) => super.copyWith((message) => updates(message as FieldSelection));
  $pb.BuilderInfo get info_ => _i;
  static FieldSelection create() => new FieldSelection();
  FieldSelection createEmptyInstance() => create();
  static $pb.PbList<FieldSelection> createRepeated() => new $pb.PbList<FieldSelection>();
  static FieldSelection getDefault() => _defaultInstance ??= create()..freeze();
  static FieldSelection _defaultInstance;
  static void $checkItem(FieldSelection v) {
    if (v is! FieldSelection) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Map<String, Field> get fields => $_getMap(0);
}

class Field extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Field', package: const $pb.PackageName('infoblox.api'))
    ..aOS(1, 'name')
    ..m<String, Field>(2, 'subs', 'Field.SubsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OM, Field.create, null, null , const $pb.PackageName('infoblox.api'))
    ..hasRequiredFields = false
  ;

  Field() : super();
  Field.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Field.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Field clone() => new Field()..mergeFromMessage(this);
  Field copyWith(void Function(Field) updates) => super.copyWith((message) => updates(message as Field));
  $pb.BuilderInfo get info_ => _i;
  static Field create() => new Field();
  Field createEmptyInstance() => create();
  static $pb.PbList<Field> createRepeated() => new $pb.PbList<Field>();
  static Field getDefault() => _defaultInstance ??= create()..freeze();
  static Field _defaultInstance;
  static void $checkItem(Field v) {
    if (v is! Field) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  Map<String, Field> get subs => $_getMap(1);
}

enum Filtering_Root {
  operator, 
  stringCondition, 
  numberCondition, 
  nullCondition, 
  stringArrayCondition, 
  numberArrayCondition, 
  notSet
}

class Filtering extends $pb.GeneratedMessage {
  static const Map<int, Filtering_Root> _Filtering_RootByTag = {
    1 : Filtering_Root.operator,
    2 : Filtering_Root.stringCondition,
    3 : Filtering_Root.numberCondition,
    4 : Filtering_Root.nullCondition,
    5 : Filtering_Root.stringArrayCondition,
    6 : Filtering_Root.numberArrayCondition,
    0 : Filtering_Root.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Filtering', package: const $pb.PackageName('infoblox.api'))
    ..a<LogicalOperator>(1, 'operator', $pb.PbFieldType.OM, LogicalOperator.getDefault, LogicalOperator.create)
    ..a<StringCondition>(2, 'stringCondition', $pb.PbFieldType.OM, StringCondition.getDefault, StringCondition.create)
    ..a<NumberCondition>(3, 'numberCondition', $pb.PbFieldType.OM, NumberCondition.getDefault, NumberCondition.create)
    ..a<NullCondition>(4, 'nullCondition', $pb.PbFieldType.OM, NullCondition.getDefault, NullCondition.create)
    ..a<StringArrayCondition>(5, 'stringArrayCondition', $pb.PbFieldType.OM, StringArrayCondition.getDefault, StringArrayCondition.create)
    ..a<NumberArrayCondition>(6, 'numberArrayCondition', $pb.PbFieldType.OM, NumberArrayCondition.getDefault, NumberArrayCondition.create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..hasRequiredFields = false
  ;

  Filtering() : super();
  Filtering.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Filtering.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Filtering clone() => new Filtering()..mergeFromMessage(this);
  Filtering copyWith(void Function(Filtering) updates) => super.copyWith((message) => updates(message as Filtering));
  $pb.BuilderInfo get info_ => _i;
  static Filtering create() => new Filtering();
  Filtering createEmptyInstance() => create();
  static $pb.PbList<Filtering> createRepeated() => new $pb.PbList<Filtering>();
  static Filtering getDefault() => _defaultInstance ??= create()..freeze();
  static Filtering _defaultInstance;
  static void $checkItem(Filtering v) {
    if (v is! Filtering) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Filtering_Root whichRoot() => _Filtering_RootByTag[$_whichOneof(0)];
  void clearRoot() => clearField($_whichOneof(0));

  LogicalOperator get operator => $_getN(0);
  set operator(LogicalOperator v) { setField(1, v); }
  bool hasOperator() => $_has(0);
  void clearOperator() => clearField(1);

  StringCondition get stringCondition => $_getN(1);
  set stringCondition(StringCondition v) { setField(2, v); }
  bool hasStringCondition() => $_has(1);
  void clearStringCondition() => clearField(2);

  NumberCondition get numberCondition => $_getN(2);
  set numberCondition(NumberCondition v) { setField(3, v); }
  bool hasNumberCondition() => $_has(2);
  void clearNumberCondition() => clearField(3);

  NullCondition get nullCondition => $_getN(3);
  set nullCondition(NullCondition v) { setField(4, v); }
  bool hasNullCondition() => $_has(3);
  void clearNullCondition() => clearField(4);

  StringArrayCondition get stringArrayCondition => $_getN(4);
  set stringArrayCondition(StringArrayCondition v) { setField(5, v); }
  bool hasStringArrayCondition() => $_has(4);
  void clearStringArrayCondition() => clearField(5);

  NumberArrayCondition get numberArrayCondition => $_getN(5);
  set numberArrayCondition(NumberArrayCondition v) { setField(6, v); }
  bool hasNumberArrayCondition() => $_has(5);
  void clearNumberArrayCondition() => clearField(6);
}

enum LogicalOperator_Left {
  leftOperator, 
  leftStringCondition, 
  leftNumberCondition, 
  leftNullCondition, 
  leftStringArrayCondition, 
  leftNumberArrayCondition, 
  notSet
}

enum LogicalOperator_Right {
  rightOperator, 
  rightStringCondition, 
  rightNumberCondition, 
  rightNullCondition, 
  rightStringArrayCondition, 
  rightNumberArrayCondition, 
  notSet
}

class LogicalOperator extends $pb.GeneratedMessage {
  static const Map<int, LogicalOperator_Left> _LogicalOperator_LeftByTag = {
    1 : LogicalOperator_Left.leftOperator,
    2 : LogicalOperator_Left.leftStringCondition,
    3 : LogicalOperator_Left.leftNumberCondition,
    4 : LogicalOperator_Left.leftNullCondition,
    11 : LogicalOperator_Left.leftStringArrayCondition,
    12 : LogicalOperator_Left.leftNumberArrayCondition,
    0 : LogicalOperator_Left.notSet
  };
  static const Map<int, LogicalOperator_Right> _LogicalOperator_RightByTag = {
    5 : LogicalOperator_Right.rightOperator,
    6 : LogicalOperator_Right.rightStringCondition,
    7 : LogicalOperator_Right.rightNumberCondition,
    8 : LogicalOperator_Right.rightNullCondition,
    13 : LogicalOperator_Right.rightStringArrayCondition,
    14 : LogicalOperator_Right.rightNumberArrayCondition,
    0 : LogicalOperator_Right.notSet
  };
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LogicalOperator', package: const $pb.PackageName('infoblox.api'))
    ..a<LogicalOperator>(1, 'leftOperator', $pb.PbFieldType.OM, LogicalOperator.getDefault, LogicalOperator.create)
    ..a<StringCondition>(2, 'leftStringCondition', $pb.PbFieldType.OM, StringCondition.getDefault, StringCondition.create)
    ..a<NumberCondition>(3, 'leftNumberCondition', $pb.PbFieldType.OM, NumberCondition.getDefault, NumberCondition.create)
    ..a<NullCondition>(4, 'leftNullCondition', $pb.PbFieldType.OM, NullCondition.getDefault, NullCondition.create)
    ..a<LogicalOperator>(5, 'rightOperator', $pb.PbFieldType.OM, LogicalOperator.getDefault, LogicalOperator.create)
    ..a<StringCondition>(6, 'rightStringCondition', $pb.PbFieldType.OM, StringCondition.getDefault, StringCondition.create)
    ..a<NumberCondition>(7, 'rightNumberCondition', $pb.PbFieldType.OM, NumberCondition.getDefault, NumberCondition.create)
    ..a<NullCondition>(8, 'rightNullCondition', $pb.PbFieldType.OM, NullCondition.getDefault, NullCondition.create)
    ..e<LogicalOperator_Type>(9, 'type', $pb.PbFieldType.OE, LogicalOperator_Type.AND, LogicalOperator_Type.valueOf, LogicalOperator_Type.values)
    ..aOB(10, 'isNegative')
    ..a<StringArrayCondition>(11, 'leftStringArrayCondition', $pb.PbFieldType.OM, StringArrayCondition.getDefault, StringArrayCondition.create)
    ..a<NumberArrayCondition>(12, 'leftNumberArrayCondition', $pb.PbFieldType.OM, NumberArrayCondition.getDefault, NumberArrayCondition.create)
    ..a<StringArrayCondition>(13, 'rightStringArrayCondition', $pb.PbFieldType.OM, StringArrayCondition.getDefault, StringArrayCondition.create)
    ..a<NumberArrayCondition>(14, 'rightNumberArrayCondition', $pb.PbFieldType.OM, NumberArrayCondition.getDefault, NumberArrayCondition.create)
    ..oo(0, [1, 2, 3, 4, 11, 12])
    ..oo(1, [5, 6, 7, 8, 13, 14])
    ..hasRequiredFields = false
  ;

  LogicalOperator() : super();
  LogicalOperator.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LogicalOperator.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LogicalOperator clone() => new LogicalOperator()..mergeFromMessage(this);
  LogicalOperator copyWith(void Function(LogicalOperator) updates) => super.copyWith((message) => updates(message as LogicalOperator));
  $pb.BuilderInfo get info_ => _i;
  static LogicalOperator create() => new LogicalOperator();
  LogicalOperator createEmptyInstance() => create();
  static $pb.PbList<LogicalOperator> createRepeated() => new $pb.PbList<LogicalOperator>();
  static LogicalOperator getDefault() => _defaultInstance ??= create()..freeze();
  static LogicalOperator _defaultInstance;
  static void $checkItem(LogicalOperator v) {
    if (v is! LogicalOperator) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  LogicalOperator_Left whichLeft() => _LogicalOperator_LeftByTag[$_whichOneof(0)];
  void clearLeft() => clearField($_whichOneof(0));

  LogicalOperator_Right whichRight() => _LogicalOperator_RightByTag[$_whichOneof(1)];
  void clearRight() => clearField($_whichOneof(1));

  LogicalOperator get leftOperator => $_getN(0);
  set leftOperator(LogicalOperator v) { setField(1, v); }
  bool hasLeftOperator() => $_has(0);
  void clearLeftOperator() => clearField(1);

  StringCondition get leftStringCondition => $_getN(1);
  set leftStringCondition(StringCondition v) { setField(2, v); }
  bool hasLeftStringCondition() => $_has(1);
  void clearLeftStringCondition() => clearField(2);

  NumberCondition get leftNumberCondition => $_getN(2);
  set leftNumberCondition(NumberCondition v) { setField(3, v); }
  bool hasLeftNumberCondition() => $_has(2);
  void clearLeftNumberCondition() => clearField(3);

  NullCondition get leftNullCondition => $_getN(3);
  set leftNullCondition(NullCondition v) { setField(4, v); }
  bool hasLeftNullCondition() => $_has(3);
  void clearLeftNullCondition() => clearField(4);

  LogicalOperator get rightOperator => $_getN(4);
  set rightOperator(LogicalOperator v) { setField(5, v); }
  bool hasRightOperator() => $_has(4);
  void clearRightOperator() => clearField(5);

  StringCondition get rightStringCondition => $_getN(5);
  set rightStringCondition(StringCondition v) { setField(6, v); }
  bool hasRightStringCondition() => $_has(5);
  void clearRightStringCondition() => clearField(6);

  NumberCondition get rightNumberCondition => $_getN(6);
  set rightNumberCondition(NumberCondition v) { setField(7, v); }
  bool hasRightNumberCondition() => $_has(6);
  void clearRightNumberCondition() => clearField(7);

  NullCondition get rightNullCondition => $_getN(7);
  set rightNullCondition(NullCondition v) { setField(8, v); }
  bool hasRightNullCondition() => $_has(7);
  void clearRightNullCondition() => clearField(8);

  LogicalOperator_Type get type => $_getN(8);
  set type(LogicalOperator_Type v) { setField(9, v); }
  bool hasType() => $_has(8);
  void clearType() => clearField(9);

  bool get isNegative => $_get(9, false);
  set isNegative(bool v) { $_setBool(9, v); }
  bool hasIsNegative() => $_has(9);
  void clearIsNegative() => clearField(10);

  StringArrayCondition get leftStringArrayCondition => $_getN(10);
  set leftStringArrayCondition(StringArrayCondition v) { setField(11, v); }
  bool hasLeftStringArrayCondition() => $_has(10);
  void clearLeftStringArrayCondition() => clearField(11);

  NumberArrayCondition get leftNumberArrayCondition => $_getN(11);
  set leftNumberArrayCondition(NumberArrayCondition v) { setField(12, v); }
  bool hasLeftNumberArrayCondition() => $_has(11);
  void clearLeftNumberArrayCondition() => clearField(12);

  StringArrayCondition get rightStringArrayCondition => $_getN(12);
  set rightStringArrayCondition(StringArrayCondition v) { setField(13, v); }
  bool hasRightStringArrayCondition() => $_has(12);
  void clearRightStringArrayCondition() => clearField(13);

  NumberArrayCondition get rightNumberArrayCondition => $_getN(13);
  set rightNumberArrayCondition(NumberArrayCondition v) { setField(14, v); }
  bool hasRightNumberArrayCondition() => $_has(13);
  void clearRightNumberArrayCondition() => clearField(14);
}

class StringCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StringCondition', package: const $pb.PackageName('infoblox.api'))
    ..pPS(1, 'fieldPath')
    ..aOS(2, 'value')
    ..e<StringCondition_Type>(3, 'type', $pb.PbFieldType.OE, StringCondition_Type.EQ, StringCondition_Type.valueOf, StringCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false
  ;

  StringCondition() : super();
  StringCondition.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StringCondition.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StringCondition clone() => new StringCondition()..mergeFromMessage(this);
  StringCondition copyWith(void Function(StringCondition) updates) => super.copyWith((message) => updates(message as StringCondition));
  $pb.BuilderInfo get info_ => _i;
  static StringCondition create() => new StringCondition();
  StringCondition createEmptyInstance() => create();
  static $pb.PbList<StringCondition> createRepeated() => new $pb.PbList<StringCondition>();
  static StringCondition getDefault() => _defaultInstance ??= create()..freeze();
  static StringCondition _defaultInstance;
  static void $checkItem(StringCondition v) {
    if (v is! StringCondition) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get fieldPath => $_getList(0);

  String get value => $_getS(1, '');
  set value(String v) { $_setString(1, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);

  StringCondition_Type get type => $_getN(2);
  set type(StringCondition_Type v) { setField(3, v); }
  bool hasType() => $_has(2);
  void clearType() => clearField(3);

  bool get isNegative => $_get(3, false);
  set isNegative(bool v) { $_setBool(3, v); }
  bool hasIsNegative() => $_has(3);
  void clearIsNegative() => clearField(4);
}

class NumberCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NumberCondition', package: const $pb.PackageName('infoblox.api'))
    ..pPS(1, 'fieldPath')
    ..a<double>(2, 'value', $pb.PbFieldType.OD)
    ..e<NumberCondition_Type>(3, 'type', $pb.PbFieldType.OE, NumberCondition_Type.EQ, NumberCondition_Type.valueOf, NumberCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false
  ;

  NumberCondition() : super();
  NumberCondition.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NumberCondition.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NumberCondition clone() => new NumberCondition()..mergeFromMessage(this);
  NumberCondition copyWith(void Function(NumberCondition) updates) => super.copyWith((message) => updates(message as NumberCondition));
  $pb.BuilderInfo get info_ => _i;
  static NumberCondition create() => new NumberCondition();
  NumberCondition createEmptyInstance() => create();
  static $pb.PbList<NumberCondition> createRepeated() => new $pb.PbList<NumberCondition>();
  static NumberCondition getDefault() => _defaultInstance ??= create()..freeze();
  static NumberCondition _defaultInstance;
  static void $checkItem(NumberCondition v) {
    if (v is! NumberCondition) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get fieldPath => $_getList(0);

  double get value => $_getN(1);
  set value(double v) { $_setDouble(1, v); }
  bool hasValue() => $_has(1);
  void clearValue() => clearField(2);

  NumberCondition_Type get type => $_getN(2);
  set type(NumberCondition_Type v) { setField(3, v); }
  bool hasType() => $_has(2);
  void clearType() => clearField(3);

  bool get isNegative => $_get(3, false);
  set isNegative(bool v) { $_setBool(3, v); }
  bool hasIsNegative() => $_has(3);
  void clearIsNegative() => clearField(4);
}

class NullCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NullCondition', package: const $pb.PackageName('infoblox.api'))
    ..pPS(1, 'fieldPath')
    ..aOB(2, 'isNegative')
    ..hasRequiredFields = false
  ;

  NullCondition() : super();
  NullCondition.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NullCondition.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NullCondition clone() => new NullCondition()..mergeFromMessage(this);
  NullCondition copyWith(void Function(NullCondition) updates) => super.copyWith((message) => updates(message as NullCondition));
  $pb.BuilderInfo get info_ => _i;
  static NullCondition create() => new NullCondition();
  NullCondition createEmptyInstance() => create();
  static $pb.PbList<NullCondition> createRepeated() => new $pb.PbList<NullCondition>();
  static NullCondition getDefault() => _defaultInstance ??= create()..freeze();
  static NullCondition _defaultInstance;
  static void $checkItem(NullCondition v) {
    if (v is! NullCondition) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get fieldPath => $_getList(0);

  bool get isNegative => $_get(1, false);
  set isNegative(bool v) { $_setBool(1, v); }
  bool hasIsNegative() => $_has(1);
  void clearIsNegative() => clearField(2);
}

class StringArrayCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('StringArrayCondition', package: const $pb.PackageName('infoblox.api'))
    ..pPS(1, 'fieldPath')
    ..pPS(2, 'values')
    ..e<StringArrayCondition_Type>(3, 'type', $pb.PbFieldType.OE, StringArrayCondition_Type.IN, StringArrayCondition_Type.valueOf, StringArrayCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false
  ;

  StringArrayCondition() : super();
  StringArrayCondition.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  StringArrayCondition.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  StringArrayCondition clone() => new StringArrayCondition()..mergeFromMessage(this);
  StringArrayCondition copyWith(void Function(StringArrayCondition) updates) => super.copyWith((message) => updates(message as StringArrayCondition));
  $pb.BuilderInfo get info_ => _i;
  static StringArrayCondition create() => new StringArrayCondition();
  StringArrayCondition createEmptyInstance() => create();
  static $pb.PbList<StringArrayCondition> createRepeated() => new $pb.PbList<StringArrayCondition>();
  static StringArrayCondition getDefault() => _defaultInstance ??= create()..freeze();
  static StringArrayCondition _defaultInstance;
  static void $checkItem(StringArrayCondition v) {
    if (v is! StringArrayCondition) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get fieldPath => $_getList(0);

  List<String> get values => $_getList(1);

  StringArrayCondition_Type get type => $_getN(2);
  set type(StringArrayCondition_Type v) { setField(3, v); }
  bool hasType() => $_has(2);
  void clearType() => clearField(3);

  bool get isNegative => $_get(3, false);
  set isNegative(bool v) { $_setBool(3, v); }
  bool hasIsNegative() => $_has(3);
  void clearIsNegative() => clearField(4);
}

class NumberArrayCondition extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('NumberArrayCondition', package: const $pb.PackageName('infoblox.api'))
    ..pPS(1, 'fieldPath')
    ..p<double>(2, 'values', $pb.PbFieldType.PD)
    ..e<NumberArrayCondition_Type>(3, 'type', $pb.PbFieldType.OE, NumberArrayCondition_Type.IN, NumberArrayCondition_Type.valueOf, NumberArrayCondition_Type.values)
    ..aOB(4, 'isNegative')
    ..hasRequiredFields = false
  ;

  NumberArrayCondition() : super();
  NumberArrayCondition.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  NumberArrayCondition.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  NumberArrayCondition clone() => new NumberArrayCondition()..mergeFromMessage(this);
  NumberArrayCondition copyWith(void Function(NumberArrayCondition) updates) => super.copyWith((message) => updates(message as NumberArrayCondition));
  $pb.BuilderInfo get info_ => _i;
  static NumberArrayCondition create() => new NumberArrayCondition();
  NumberArrayCondition createEmptyInstance() => create();
  static $pb.PbList<NumberArrayCondition> createRepeated() => new $pb.PbList<NumberArrayCondition>();
  static NumberArrayCondition getDefault() => _defaultInstance ??= create()..freeze();
  static NumberArrayCondition _defaultInstance;
  static void $checkItem(NumberArrayCondition v) {
    if (v is! NumberArrayCondition) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get fieldPath => $_getList(0);

  List<double> get values => $_getList(1);

  NumberArrayCondition_Type get type => $_getN(2);
  set type(NumberArrayCondition_Type v) { setField(3, v); }
  bool hasType() => $_has(2);
  void clearType() => clearField(3);

  bool get isNegative => $_get(3, false);
  set isNegative(bool v) { $_setBool(3, v); }
  bool hasIsNegative() => $_has(3);
  void clearIsNegative() => clearField(4);
}

class Pagination extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Pagination', package: const $pb.PackageName('infoblox.api'))
    ..aOS(1, 'pageToken')
    ..a<int>(2, 'offset', $pb.PbFieldType.O3)
    ..a<int>(3, 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Pagination() : super();
  Pagination.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Pagination.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Pagination clone() => new Pagination()..mergeFromMessage(this);
  Pagination copyWith(void Function(Pagination) updates) => super.copyWith((message) => updates(message as Pagination));
  $pb.BuilderInfo get info_ => _i;
  static Pagination create() => new Pagination();
  Pagination createEmptyInstance() => create();
  static $pb.PbList<Pagination> createRepeated() => new $pb.PbList<Pagination>();
  static Pagination getDefault() => _defaultInstance ??= create()..freeze();
  static Pagination _defaultInstance;
  static void $checkItem(Pagination v) {
    if (v is! Pagination) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get pageToken => $_getS(0, '');
  set pageToken(String v) { $_setString(0, v); }
  bool hasPageToken() => $_has(0);
  void clearPageToken() => clearField(1);

  int get offset => $_get(1, 0);
  set offset(int v) { $_setSignedInt32(1, v); }
  bool hasOffset() => $_has(1);
  void clearOffset() => clearField(2);

  int get limit => $_get(2, 0);
  set limit(int v) { $_setSignedInt32(2, v); }
  bool hasLimit() => $_has(2);
  void clearLimit() => clearField(3);
}

class PageInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PageInfo', package: const $pb.PackageName('infoblox.api'))
    ..aOS(1, 'pageToken')
    ..a<int>(2, 'size', $pb.PbFieldType.O3)
    ..a<int>(3, 'offset', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PageInfo() : super();
  PageInfo.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PageInfo.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PageInfo clone() => new PageInfo()..mergeFromMessage(this);
  PageInfo copyWith(void Function(PageInfo) updates) => super.copyWith((message) => updates(message as PageInfo));
  $pb.BuilderInfo get info_ => _i;
  static PageInfo create() => new PageInfo();
  PageInfo createEmptyInstance() => create();
  static $pb.PbList<PageInfo> createRepeated() => new $pb.PbList<PageInfo>();
  static PageInfo getDefault() => _defaultInstance ??= create()..freeze();
  static PageInfo _defaultInstance;
  static void $checkItem(PageInfo v) {
    if (v is! PageInfo) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get pageToken => $_getS(0, '');
  set pageToken(String v) { $_setString(0, v); }
  bool hasPageToken() => $_has(0);
  void clearPageToken() => clearField(1);

  int get size => $_get(1, 0);
  set size(int v) { $_setSignedInt32(1, v); }
  bool hasSize() => $_has(1);
  void clearSize() => clearField(2);

  int get offset => $_get(2, 0);
  set offset(int v) { $_setSignedInt32(2, v); }
  bool hasOffset() => $_has(2);
  void clearOffset() => clearField(3);
}

