///
//  Generated code. Do not modify.
//  source: infoblox/api/collection_operators.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class SortCriteria_Order extends $pb.ProtobufEnum {
  static const SortCriteria_Order ASC = const SortCriteria_Order._(0, 'ASC');
  static const SortCriteria_Order DESC = const SortCriteria_Order._(1, 'DESC');

  static const List<SortCriteria_Order> values = const <SortCriteria_Order> [
    ASC,
    DESC,
  ];

  static final Map<int, SortCriteria_Order> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SortCriteria_Order valueOf(int value) => _byValue[value];
  static void $checkItem(SortCriteria_Order v) {
    if (v is! SortCriteria_Order) $pb.checkItemFailed(v, 'SortCriteria_Order');
  }

  const SortCriteria_Order._(int v, String n) : super(v, n);
}

class LogicalOperator_Type extends $pb.ProtobufEnum {
  static const LogicalOperator_Type AND = const LogicalOperator_Type._(0, 'AND');
  static const LogicalOperator_Type OR = const LogicalOperator_Type._(1, 'OR');

  static const List<LogicalOperator_Type> values = const <LogicalOperator_Type> [
    AND,
    OR,
  ];

  static final Map<int, LogicalOperator_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LogicalOperator_Type valueOf(int value) => _byValue[value];
  static void $checkItem(LogicalOperator_Type v) {
    if (v is! LogicalOperator_Type) $pb.checkItemFailed(v, 'LogicalOperator_Type');
  }

  const LogicalOperator_Type._(int v, String n) : super(v, n);
}

class StringCondition_Type extends $pb.ProtobufEnum {
  static const StringCondition_Type EQ = const StringCondition_Type._(0, 'EQ');
  static const StringCondition_Type MATCH = const StringCondition_Type._(1, 'MATCH');
  static const StringCondition_Type GT = const StringCondition_Type._(2, 'GT');
  static const StringCondition_Type GE = const StringCondition_Type._(3, 'GE');
  static const StringCondition_Type LT = const StringCondition_Type._(4, 'LT');
  static const StringCondition_Type LE = const StringCondition_Type._(5, 'LE');
  static const StringCondition_Type IEQ = const StringCondition_Type._(6, 'IEQ');

  static const List<StringCondition_Type> values = const <StringCondition_Type> [
    EQ,
    MATCH,
    GT,
    GE,
    LT,
    LE,
    IEQ,
  ];

  static final Map<int, StringCondition_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StringCondition_Type valueOf(int value) => _byValue[value];
  static void $checkItem(StringCondition_Type v) {
    if (v is! StringCondition_Type) $pb.checkItemFailed(v, 'StringCondition_Type');
  }

  const StringCondition_Type._(int v, String n) : super(v, n);
}

class NumberCondition_Type extends $pb.ProtobufEnum {
  static const NumberCondition_Type EQ = const NumberCondition_Type._(0, 'EQ');
  static const NumberCondition_Type GT = const NumberCondition_Type._(1, 'GT');
  static const NumberCondition_Type GE = const NumberCondition_Type._(2, 'GE');
  static const NumberCondition_Type LT = const NumberCondition_Type._(3, 'LT');
  static const NumberCondition_Type LE = const NumberCondition_Type._(4, 'LE');

  static const List<NumberCondition_Type> values = const <NumberCondition_Type> [
    EQ,
    GT,
    GE,
    LT,
    LE,
  ];

  static final Map<int, NumberCondition_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NumberCondition_Type valueOf(int value) => _byValue[value];
  static void $checkItem(NumberCondition_Type v) {
    if (v is! NumberCondition_Type) $pb.checkItemFailed(v, 'NumberCondition_Type');
  }

  const NumberCondition_Type._(int v, String n) : super(v, n);
}

class StringArrayCondition_Type extends $pb.ProtobufEnum {
  static const StringArrayCondition_Type IN = const StringArrayCondition_Type._(0, 'IN');

  static const List<StringArrayCondition_Type> values = const <StringArrayCondition_Type> [
    IN,
  ];

  static final Map<int, StringArrayCondition_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StringArrayCondition_Type valueOf(int value) => _byValue[value];
  static void $checkItem(StringArrayCondition_Type v) {
    if (v is! StringArrayCondition_Type) $pb.checkItemFailed(v, 'StringArrayCondition_Type');
  }

  const StringArrayCondition_Type._(int v, String n) : super(v, n);
}

class NumberArrayCondition_Type extends $pb.ProtobufEnum {
  static const NumberArrayCondition_Type IN = const NumberArrayCondition_Type._(0, 'IN');

  static const List<NumberArrayCondition_Type> values = const <NumberArrayCondition_Type> [
    IN,
  ];

  static final Map<int, NumberArrayCondition_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NumberArrayCondition_Type valueOf(int value) => _byValue[value];
  static void $checkItem(NumberArrayCondition_Type v) {
    if (v is! NumberArrayCondition_Type) $pb.checkItemFailed(v, 'NumberArrayCondition_Type');
  }

  const NumberArrayCondition_Type._(int v, String n) : super(v, n);
}

